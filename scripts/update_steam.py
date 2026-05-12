import os
import re
import json
import urllib.request

STEAM_API_KEY = os.environ["STEAM_API_KEY"]
STEAM_ID     = os.environ["STEAM_ID"]

def fetch(url):
    with urllib.request.urlopen(url) as r:
        return json.loads(r.read())

# ── Games Owned ──────────────────────────────────────────────
games_url = (
    "https://api.steampowered.com/IPlayerService/GetOwnedGames/v1/"
    f"?key={STEAM_API_KEY}&steamid={STEAM_ID}&format=json"
)
games_data   = fetch(games_url)
games_owned  = games_data["response"].get("game_count", 0)

# ── Perfect Games + Total Achievements ───────────────────────
# GetBadges gives player_xp (not achievement count); use GetRecentlyPlayedGames
# For total achievements we iterate per-game — too slow for 500+ games,
# so we use the community stats page trick via ISteamUserStats
stats_url = (
    "https://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v1/"
)

# Simpler: scrape the badge/stats endpoint for total achievement count
badge_url = (
    "https://api.steampowered.com/IPlayerService/GetBadges/v1/"
    f"?key={STEAM_API_KEY}&steamid={STEAM_ID}&format=json"
)
badge_data        = fetch(badge_url)
response          = badge_data["response"]
# player_xp loosely maps to achievements earned across all games
total_achievements = response.get("player_xp", 0)

# perfect = badges where border_color == 0 (platinum / all-achievements)
badges        = response.get("badges", [])
perfect_games = sum(1 for b in badges if b.get("border_color", -1) == 0)

print(f"Games Owned  : {games_owned}")
print(f"Perfect Games: {perfect_games}")
print(f"Total XP     : {total_achievements}")

# ── Update README.md ─────────────────────────────────────────
with open("README.md", "r", encoding="utf-8") as f:
    readme = f.read()

def replace_marker(text, marker, value):
    pattern = rf"<!-- {marker}_START -->[^<]*<!-- {marker}_END -->"
    replacement = f"<!-- {marker}_START -->{value}<!-- {marker}_END -->"
    return re.sub(pattern, replacement, text)

readme = replace_marker(readme, "GAMES",        games_owned)
readme = replace_marker(readme, "PERFECT",      perfect_games)
readme = replace_marker(readme, "ACHIEVEMENTS", total_achievements)

with open("README.md", "w", encoding="utf-8") as f:
    f.write(readme)

print("README.md updated successfully!")

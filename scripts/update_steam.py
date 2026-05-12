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

# ── Perfect Games + Achievements ─────────────────────────────
badge_url = (
    "https://api.steampowered.com/IPlayerService/GetBadges/v1/"
    f"?key={STEAM_API_KEY}&steamid={STEAM_ID}&format=json"
)
badge_data        = fetch(badge_url)
response          = badge_data["response"]
total_achievements = response.get("player_xp", 0)
badges            = response.get("badges", [])
perfect_games     = sum(1 for b in badges if b.get("border_color", -1) == 0)

print(f"Games Owned  : {games_owned}")
print(f"Perfect Games: {perfect_games}")
print(f"Achievements : {total_achievements}")

# ── Update README.md ─────────────────────────────────────────
with open("README.md", "r", encoding="utf-8") as f:
    readme = f.read()

def replace_marker(text, marker, value):
    pattern = rf"<!-- {marker}_START -->[^<]*<!-- {marker}_END -->"
    replacement = f"<!-- {marker}_START -->{value}<!-- {marker}_END -->"
    return re.sub(pattern, replacement, text)

def replace_badge(text, label, value):
    # Replace the number in badge URL e.g. Steam_Games-536-
    pattern = rf"(shields\.io/badge/{label}-)[\d,]+([-?])"
    replacement = rf"\g<1>{value}\2"
    return re.sub(pattern, replacement, text)

# Update markers (Value column)
readme = replace_marker(readme, "GAMES",        games_owned)
readme = replace_marker(readme, "PERFECT",      perfect_games)
readme = replace_marker(readme, "ACHIEVEMENTS", total_achievements)

# Update badge URLs (Progress column)
readme = replace_badge(readme, "Steam_Games",  games_owned)
readme = replace_badge(readme, "Perfect_Games", perfect_games)
readme = replace_badge(readme, "Achievements",  total_achievements)

with open("README.md", "w", encoding="utf-8") as f:
    f.write(readme)

print("README.md updated successfully!")

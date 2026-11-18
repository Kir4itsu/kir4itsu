## Summary
Fix GPS timeout handling during Check-In Visit to prevent timeout errors from being incorrectly treated as GPS disabled.

### Related Issues
CDE-67630

## Detailed Description

### What
- Added a fallback mechanism for GPS location requests.
- Updated GPS error handling to distinguish between permission denied, GPS disabled, and timeout errors.
- Added support for using a cached location (up to 30 seconds old) when the initial GPS request times out.

### Why
Previously, when the GPS request timed out, the system treated it as GPS disabled. This caused users to receive an incorrect message asking them to enable location services, even when GPS was already enabled.

### How
- Updated `getPositionWithAccuracy()` to accept configurable location options.
- Added `getPositionSmart()` to first request a high-accuracy location with an 8-second timeout.
- If the request times out, it retries with lower accuracy and allows cached locations up to 30 seconds old.
- Updated `validateCheckIn()` to handle GPS timeout errors separately from permission and GPS disabled errors.

### Impact
- Improves GPS request handling during Check-In Visit.
- Reduces unnecessary waiting time when the initial GPS request times out.
- Prevents GPS timeout errors from being incorrectly classified as GPS disabled.
- Changes are limited to `visitCheckInHelper.js`.

### Additional Notes
- Only `visitCheckInHelper.js` was modified for this fix.
- Further investigation may be needed to identify potential conflicts between the map component and GPS location requests.

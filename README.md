# Third-Person Vehicle Camera Tool

A Cyber Engine Tweaks mod for **Cyberpunk 2077** that provides complete control over all third-person vehicle camera offsets.
It allows you to view, edit, generate, test, and save camera presets for **every vehicle** in the game — vanilla or modded.

This tool is designed for users who want consistent camera behavior, accurate positioning and full customization, without relying on built-in game defaults.

---

## ✨ Features

- Full TPP camera offset editing (Close / Medium / Far views)
- Support for all vanilla and custom vehicles
- Automatic preset generation for vehicles without presets
- Creator Mode with extensive debug levels
- Preset Explorer with search filters
- Usage statistics for each preset
- Global and advanced camera settings
- On-screen ruler and adjustable UI options
- Toast notifications and detailed logging
- Compatible with game version **2.21+** and CET **1.35+**

---

## 📦 Installation

1. Install **Cyber Engine Tweaks** (CET)
2. Extract the mod folder into:
   ```
   Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/
   ```
3. Start the game once so CET registers the mod

Creator Mode and UI options appear inside the CET overlay.

---

## 🎮 Usage Overview

### Creator Mode
Enables preset creation, live testing, debug overlays, a distance ruler, and extended technical output.

Debug levels range from:
- Disabled → performance mode
- Basic → console output
- Overlay → persistent UI
- Ruler → on-screen x-axis guide
- Alert → in-game popup notifications
- Full → all debug features enabled

### Preset Editor
- Edit camera angles, offsets, distances
- Apply changes
- Save persistent presets
- Rename presets for cross-vehicle use
- Restore default presets
- View live token hashes for change detection

### Preset Explorer
- Browse all preset files
- Filter installed, modded, unused, active, vanilla
- View usage history
- Delete obsolete presets

### Global Settings
Affects all vehicles:
- Adjust FOV
- Disable auto-centering
- Zoom
- Override default camera behavior
- Fine-tune advanced raw parameters

Requires exiting and re-entering the vehicle for some values.

---

## 📁 File Structure

The mod uses the following structure:

```
/mods/TPPVCamTool/
    init.lua         → main logic, editor, presets, UI
    text.lua         → all UI/tooltip/label strings
    api.lua          → IntelliSense definitions (no runtime code)
    defaults/        → untouched vanilla preset templates
    presets/         → custom vehicle presets
    presets-vanilla/ → vanilla vehicle presets
```

---

## ✔ Requirements

- Cyberpunk 2077 **2.21 or higher**
- Cyber Engine Tweaks **1.35 or higher**
- (Optional) Native Settings UI for additional UI integration
- (Optional) Codeware for extended functionality
- (Optional) FovControl for extended functionality

---

## 💬 Support

Bug reports are only accepted when:
- game version is 2.21+
- CET version is 1.35+
- all **required** dependencies are installed
- this mod is updated to the latest version

If a vehicle is missing a preset, enable **Creator Mode**, provide a screenshot with the CET Creator overlay, or send the mod link for custom vehicles.

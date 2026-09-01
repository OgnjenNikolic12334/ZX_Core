# ⚡ ZX_Core

A lightweight and configurable **FiveM core utility resource** designed to simplify common functions used across FiveM scripts.

ZX_Core provides reusable systems for **blips, markers, notifications, inventory rewards**, and additional server-wide features.

## ✨ Features

- 📍 Dynamic Blip System
- 🔹 Dynamic Marker System
- 🔔 Notification System
- 🎒 Multi-inventory item rewards
- 🚂 Configurable train system
- 🎨 Custom pause menu colors
- ⚙️ Fully configurable
- 🚀 Lightweight and optimized
- 🔌 Easy-to-use exports for other resources

## 📍 Blips

Create and remove blips easily from any resource:

```lua
exports["ZX_Core"]:AddBlip({
    coords = vector3(0.0, 0.0, 0.0),
    sprite = 1,
    scale = 0.8,
    colour = 1,
    text = "Example Blip"
}) 
```

### Remove a blip using its ID:
```
exports["ZX_Core"]:RemoveBlip(blipId)
```

## 🔹 Markers

ZX_Core includes a dynamic marker system with automatic distance checking.
```
local markerId = exports["ZX_Core"]:AddMarker({
    type = 0,
    coords = vector3(0.0, 0.0, 0.0),
    size = vector3(1.0, 1.0, 1.0),
    color = {
        r = 255,
        g = 255,
        b = 255,
        a = 150
    },
    distance = 15.0
})
```

### Update a marker:
```
exports["ZX_Core"]:UpdateMarker(markerId, {
    coords = vector3(10.0, 10.0, 10.0)
})
```

### Remove a marker:

```
exports["ZX_Core"]:RemoveMarker(markerId)
```
## 🔔 Notifications

ZX_Core supports multiple notification systems:

- ox_lib
- esx_notify
- okokNotify

Example:

```
exports["ZX_Core"]:ShowNotify(
    "Garbage Job",
    "You have successfully started the job.",
    "success"
)
```

The notification system can be selected through the configuration.

## 🎒 Inventory Support

ZX_Core provides a unified GiveItem export for multiple inventory systems.

Supported inventories:

- tgiann-inventory
- ox_inventory
- qs-inventory
- jpr-inventory
- qb-inventory

Example:

```
exports["ZX_Core"]:GiveItem(
    source,
    "money_item",
    100
)
```

The inventory system is selected through config.lua.

## 🚂 Train System

The train system can be enabled or disabled through the configuration.

Config.OtherFunctions.Trains.functional = true

When enabled, random trains are activated automatically.

## 🎨 Pause Menu

ZX_Core allows you to customize GTA V pause menu HUD colors and the pause menu title.

You can configure:

Line color
Menu style color
Waypoint color
Pause menu title

Example:

Config.OtherFunctions.PauseMenu.functional = true
## ⚙️ Configuration

ZX_Core is designed to be easily configurable.

You can configure:

Notification system
Notification duration
Inventory system
Pause menu
Pause menu colors
Train system
Other core functionality

### 📦 Installation
Download ZX_Core
Place it inside your server's resources folder:
resources/
└── ZX_Core/
Add it to your server.cfg:
ensure ZX_Core
Make sure your other resources start after ZX_Core.

Example:

ensure ZX_Core
ensure ZX-GarbageJob

### 🔌 Exports

ZX_Core currently provides the following exports:

- AddBlip
- RemoveBlip

- AddMarker
- RemoveMarker
- UpdateMarker

- ShowNotify

- GiveItem

These exports allow other resources to use ZX_Core functionality without duplicating the same systems.

## 🚀 Designed For

ZX_Core is designed to serve as a lightweight foundation for ZX Scripts and other FiveM resources that need common utility functions.

It can help keep individual resources smaller, cleaner and easier to maintain.

### 📞 Contact

Discord: oggiissa
Instagram: @ognjen.n

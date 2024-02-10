# ec-luart-widgetmanager

The project is a widget management module written in Lua. It defines a WidgetManager object that contains methods for managing widgets in LuaRT desktop applications. By using this module, you can easily organize and control the behavior of widgets in your application.

![Screenshot of the Panel Example](/readme.png)

[![Lua 5.4.6](https://badgen.net/badge/Lua/5.4.6/yellow)](https://github.com/lua/lua)
[![LuaRT 1.7.0](https://badgen.net/badge/LuaRT/1.7.0/blue)](https://github.com/samyeyo/LuaRT)
[![LuaCheck 1.1.1](https://badgen.net/badge/LuaCheck/1.1.1/green)](https://github.com/lunarmodules/luacheck)

## Features

The project provides a modular and flexible way to manage widgets in desktop applications. It allows you to add, reorder, hide, show, and change properties of child widgets. Several widget managers can be used in one application.

Z-index: The z-index determines the stacking order of widgets on the screen. Widgets with higher z-index values appear on top of widgets with lower z-index values.

## Installation

1. Create a folder called "ecluart" in your application.
2. Copy the "wm.lua" file into this folder.

```text
[application]
|
|----ecluart
|   |
|   |----wm.lua
|   |----...
|
|----app.wlua
```

## Usage

The widget manager (wm) can be loaded using the function *require()*:

```lua
local vm = require("ecluart.wm") 
```

## License

Copyright (c) 2023 by esferatec.
It is open source, released under the MIT License.
See full copyright notice in the LICENSE.md file.

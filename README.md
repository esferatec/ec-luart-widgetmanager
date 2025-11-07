# ec-luart-widgetmanager

The project is a widget management module written in Lua. It defines a WidgetManager object that handels properties of widgets in LuaRT desktop applications.

[![LuaRT 2.1.0](https://badgen.net/badge/LuaRT/2.1.0/blue)](https://github.com/samyeyo/LuaRT)

## Features

The project provides a modular and flexible way to manage widgets in desktop applications. It allows easy addition of widgets and their corresponding properties. Several widget managers can be used in one application.

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
local wm = require("ecluart.wm") 
```

## Constructor

```Lua
WidgetManager() -> object
```

Initializes a new widget manager instance.

## Method - add

```Lua
WidgetManager:add(widget: object, name: string) -> none
```

Adds a widget and name.

## Method - hide

```Lua
WidgetManager:hide() -> none
```

Hides all child widgets.

## Method - show

```Lua
WidgetManager:show() -> none
```

Shows all child widgets.

## Method - disable

```Lua
WidgetManager:disable() -> none
```

Disables all child widgets.

## Method - enable

```Lua
WidgetManager:enable() -> none
```

Enables all child widgets.

## Method - change

```Lua
WidgetManager:change(key: string, value: any) -> none
```

Changes a property for all child widgets.

## Method - focus

```Lua
WidgetManager:focus(name: string) -> none
```

Sets the focus to a specific child widget.

## License

Copyright (c) 2023 by esferatec.
It is open source, released under the MIT License.
See full copyright notice in the LICENSE.md file.

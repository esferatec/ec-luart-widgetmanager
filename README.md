# ec-luart-widgetmanager

The project is a widget management module written in Lua. It defines a WidgetManager object that contains methods for managing widgets in LuaRT desktop applications.

![Screenshot of the Panel Example](/readme.png)

[![Lua 5.4.6](https://badgen.net/badge/Lua/5.4.6/yellow)](https://github.com/lua/lua)
[![LuaRT 1.7.0](https://badgen.net/badge/LuaRT/1.7.0/blue)](https://github.com/samyeyo/LuaRT)
[![LuaCheck 1.1.1](https://badgen.net/badge/LuaCheck/1.1.1/green)](https://github.com/lunarmodules/luacheck)

## Features

The project provides a modular and flexible way to manage widgets in desktop applications. It allows you to add, reorder, hide, show, and change properties of child widgets. Several widget managers can be used in one application.

zindex: The z-index determines the stacking order of widgets on the screen. Widgets with higher z-index values appear on top of widgets with lower z-index values.

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

The code above initializes a new instance of the widget manager object. It returns the newly created object.

## Method - add

```Lua
WidgetManager:add(widget: object, name: string) -> none
```

This function adds a widget to the WidgetManager object and sets its zindex. It takes an object widget and a string name as parameters. It first checks if the widget is a valid child widget using the isValidChild function. If it is not a valid child widget or the name is not a string, the function returns early. Otherwise, it adds the widget to the children table using the name as the key. If the widget does not have a zindex property, it sets it to the next available index in the zorder table.

## Method - reorder

```Lua
WidgetMangager:reorder() -> none
```

This function reorders the widgets in the zorder table based on their zindex property. It uses the table sort function with a custom comparison function to sort the widgets in ascending order of their zindex.

## Method - apply

```Lua
WidgetManager:apply() -> none
```

This function places the widgets in the zorder table in the given order. It iterates over the zorder table and calls the tofront method on each widget to position it at the front.

## Method - hide

```Lua
WidgetManager:hide() -> none
```

This function hides all the child widgets by setting their visible property to false. It iterates over the children table using the each function and sets the visible property of each child widget to false.

## Method - show

```Lua
WidgetManager:show() -> none
```

This function shows all the child widgets by setting their visible property to true. It iterates over the children table using the each function and sets the visible property of each child widget to true.

## Method - disable

```Lua
WidgetManager:disable() -> none
```

This method is responsible for disabling all child widgets. It achieves this by iterating over each child widget and setting its enabled property to false.

## Method - enable

```Lua
WidgetManager:enable() -> none
```

This method, on the other hand, enables all child widgets. It follows a similar approach as the disable method, but instead sets the enabled property to true.

## Method - change

```Lua
WidgetManager:change(key: string, value: any) -> none
```

This function changes a property for all the child widgets. It takes a string key and any value as parameters. It first checks if the key is a string. If it is not, the function returns early. Otherwise, it iterates over the children table using the each function and sets the key property of each child widget to the given value.

## Method - focus

```Lua
WidgetManager:focus(name: string) -> none
```

This function sets the focus to a specific widget by showing it. It takes a string name as a parameter. It first checks if the name is a string. If it is not, the function returns early. Otherwise, it shows the child widget with the given name by calling the show method on it.

## License

Copyright (c) 2023 by esferatec.
It is open source, released under the MIT License.
See full copyright notice in the LICENSE.md file.

# WM.LUA

The code is a lua module for managing widgets. It defines a WidgetManager object that provides methods to perform operations on a collection of widgets.

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
WidgetManager:change() -> none
```

This function changes a property for all the child widgets. It takes a string key and any value as parameters. It first checks if the key is a string. If it is not, the function returns early. Otherwise, it iterates over the children table using the each function and sets the key property of each child widget to the given value.

## Method - focus

```Lua
WidgetManager:focus() -> none
```

This function sets the focus to a specific widget by showing it. It takes a string name as a parameter. It first checks if the name is a string. If it is not, the function returns early. Otherwise, it shows the child widget with the given name by calling the show method on it.

-- Defines a widget management module.
local wm = {}

-- Checks if the parameter is a valid child widget.
-- isValidChild(parameter: any) -> boolean
local function isValidChild(parameter)
  local childType = type(parameter)
  local invalidTypes = {
    "nil",
    "boolean",
    "number",
    "string",
    "userdata",
    "function",
    "thread" }

  for _, invalidType in ipairs(invalidTypes) do
    if string.find(childType, invalidType) then return false end
  end

  return true
end

-- Checks if the parameter is a string type.
-- isString(parameter: any) -> boolean
local function isString(parameter)
  return type(parameter) == "string"
end

-- Checks if the parameter is a nil type.
-- isNil(parameter: any) -> boolean
local function isNil(parameter)
  return type(parameter) == "nil"
end

-- Defines the widget manager object.
local WidgetManager = Object({})

-- Creates the widget manager constructor.
function WidgetManager:constructor()
  self.children = {}
  self.zorder = {}
end

-- Adds a widget and sets the zindex.
-- add(widget: object, name: string) -> none
function WidgetManager:add(widget, name)
  if not isValidChild(widget) then return end
  if not isString(name) then return end

  self.children[name] = widget

  if isNil(widget.zindex) then
    widget.zindex = #self.zorder + 1
  end

  table.insert(self.zorder, widget.zindex, widget)
end

-- Reorders the widgets based on their zindex.
-- reorder() -> none
function WidgetManager:reorder()
  table.sort(self.zorder, function(a, b) return a.zindex < b.zindex end)
end

-- Places the widget in the given order.
-- apply() -> none
function WidgetManager:apply()
  for _, widget in ipairs(self.zorder) do
    widget:tofront()
  end
end

-- Hides all child widgets.
-- hide() -> none
function WidgetManager:hide()
  for child in each(self.children) do
    child['visible'] = false
  end
end

-- Shows all child widgets.
-- show() -> none
function WidgetManager:show()
  for child in each(self.children) do
    child.visible = true
  end
end

-- Changes a property for all child widgets.
-- change(key: string, value: any) -> none
function WidgetManager:change(key, value)
  if not isString(key) then return end

  for child in each(self.children) do
    child[key] = value
  end
end

-- Sets the focus to a specific widget.
-- focus(name: string) -> none
function WidgetManager:focus(name)
  if not isString(name) then return end
  self.children[name]:show()
end

-- Initializes a new widget manager instance.
-- WidgetManager() -> object
function wm.WidgetManager()
  return WidgetManager()
end

return wm

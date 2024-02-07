# Example

```Lua
local ui = require("ui") -- Import the ui module
local wm = require("ecluart.wm") -- Import the wm module

local win = ui.Window("PanelSample", "fixed", 400, 300) -- Create a new window with the title "PanelSample" and fixed dimensions of 400x300 pixels
win.WM = wm.WidgetManager() -- Create a new widget manager for the window
win.WM_BUTTONS = wm.WidgetManager() -- Create a new widget manager for the buttons

local panel1 = ui.Panel(win, 0, 0, 100, 100) -- Create a new panel at position (0, 0) with dimensions 100x100 pixels
panel1.border = true -- Add a border to the panel
panel1.bgcolor = 0x8B008B -- Set the background color of the panel to dark magenta
win.WM:add(panel1, "panel1") -- Add the panel to the widget manager with the name "panel1"

local panel2 = ui.Panel(win, 20, 20, 100, 100) -- Create a new panel at position (20, 20) with dimensions 100x100 pixels
panel2.border = true -- Add a border to the panel
panel2.bgcolor = 0xFF6347 -- Set the background color of the panel to tomato
win.WM:add(panel2, "panel2") -- Add the panel to the widget manager with the name "panel2"

local panel3 = ui.Panel(win, 40, 40, 100, 100) -- Create a new panel at position (40, 40) with dimensions 100x100 pixels
panel3.border = true -- Add a border to the panel
panel3.bgcolor = 0x00008B -- Set the background color of the panel to dark blue
win.WM:add(panel3, "panel3") -- Add the panel to the widget manager with the name "panel3"

local panel4 = ui.Panel(win, 60, 60, 100, 100) -- Create a new panel at position (60, 60) with dimensions 100x100 pixels
panel4.border = true -- Add a border to the panel
panel4.bgcolor = 0x006400 -- Set the background color of the panel to dark green
win.WM:add(panel4, "panel4") -- Add the panel to the widget manager with the name "panel4"

local button1 = ui.Button(win, "Example 1", 200, 20) -- Create a new button with the label "Example 1" at position (200, 20)
local button2 = ui.Button(win, "Example 2", 200, 50) -- Create a new button with the label "Example 2" at position (200, 50)
local button3 = ui.Button(win, "Example 3", 200, 80) -- Create a new button with the label "Example 3" at position (200, 80)
local button4 = ui.Button(win, "Example 4", 200, 110) -- Create a new button with the label "Example 4" at position (200, 110)
local button5 = ui.Button(win, "Hide All Panels", 200, 140) -- Create a new button with the label "Hide All Panels" at position (200, 140)
local button6 = ui.Button(win, "Show All Panels", 200, 170) -- Create a new button with the label "Show All Panels" at position (200, 170)

win.WM_BUTTONS:add(button1, "button1") -- Add button1 to the button widget manager with the name "button1"
win.WM_BUTTONS:add(button2, "button2") -- Add button2 to the button widget manager with the name "button2"
win.WM_BUTTONS:add(button3, "button3") -- Add button3 to the button widget manager with the name "button3"
win.WM_BUTTONS:add(button4, "button4") -- Add button4 to the button widget manager with the name "button4"

function button1:onClick() -- Define the onClick event handler for button1
  panel1.zindex = 4 -- Set the z-index of panel1 to 4 (bring it to the front)
  panel2.zindex = 3 -- Set the z-index of panel2 to 3
  panel3.zindex = 2 -- Set the z-index of panel3 to 2
  panel4.zindex = 1 -- Set the z-index of panel4 to 1 (send it to the back)
  win.WM:reorder() -- Reorder the panels based on their z-index
  win.WM:apply() -- Apply the changes to the widget manager
end

function button2:onClick() -- Define the onClick event handler for button2
  panel1.zindex = 2 -- Set the z-index of panel1 to 2
  panel2.zindex = 4 -- Set the z-index of panel2 to 4 (bring it to the front)
  panel3.zindex = 1 -- Set the z-index of panel3 to 1 (send it to the back)
  panel4.zindex = 3 -- Set the z-index of panel4 to 3
  win.WM:reorder() -- Reorder the panels based on their z-index
  win.WM:apply() -- Apply the changes to the widget manager
end

function button3:onClick() -- Define the onClick event handler for button3
  panel1.zindex = 3 -- Set the z-index of panel1 to 3
  panel2.zindex = 1 -- Set the z-index of panel2 to 1 (send it to the back)
  panel3.zindex = 4 -- Set the z-index of panel3 to 4 (bring it to the front)
  panel4.zindex = 2 -- Set the z-index of panel4 to 2
  win.WM:reorder() -- Reorder the panels based on their z-index
  win.WM:apply() -- Apply the changes to the widget manager
end

function button4:onClick() -- Define the onClick event handler for button4
  panel1.zindex = 1 -- Set the z-index of panel1 to 1 (send it to the back)
  panel2.zindex = 2 -- Set the z-index of panel2 to 2
  panel3.zindex = 3 -- Set the z-index of panel3 to 3
  panel4.zindex = 4 -- Set the z-index of panel4 to 4 (bring it to the front)
  win.WM:reorder() -- Reorder the panels based on their z-index
  win.WM:apply() -- Apply the changes to the widget manager
end

function button5:onClick() -- Define the onClick event handler for button5
  win.WM:hide() -- Hide all the panels in the widget manager
  win.WM_BUTTONS:disable() -- Disable all the buttons in the button widget manager
end

function button6:onClick() -- Define the onClick event handler for button6
  win.WM:show() -- Show all the panels in the widget manager
  win.WM_BUTTONS:enable() -- Enable all the buttons in the button widget manager
end

win.WM:apply() -- Apply the changes to the widget manager

ui.run(win):wait() -- Run the UI and wait for user input
```

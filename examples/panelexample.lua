local ui = require("ui")
local wm = require("ecluart.wm")

local win = ui.Window("PanelSample", "fixed", 400, 300)
win.WM = wm.WidgetManager()
win.WM_BUTTONS = wm.WidgetManager()

local panel1 = ui.Panel(win, 0, 0, 100, 100)
panel1.border = true
panel1.bgcolor = 0x8B008B
win.WM:add(panel1, "panel1")

local panel2 = ui.Panel(win, 20, 20, 100, 100)
panel2.border = true
panel2.bgcolor = 0xFF6347
win.WM:add(panel2, "panel2")

local panel3 = ui.Panel(win, 40, 40, 100, 100)
panel3.border = true
panel3.bgcolor = 0x00008B
win.WM:add(panel3, "panel3")

local panel4 = ui.Panel(win, 60, 60, 100, 100)
panel4.border = true
panel4.bgcolor = 0x006400
win.WM:add(panel4, "panel4")

local button1 = ui.Button(win, "Example 1", 200, 20)
local button2 = ui.Button(win, "Example 2", 200, 50)
local button3 = ui.Button(win, "Example 3", 200, 80)
local button4 = ui.Button(win, "Example 4", 200, 110)
local button5 = ui.Button(win, "Hide All Panels", 200, 140)
local button6 = ui.Button(win, "Show All Panels", 200, 170)

win.WM_BUTTONS:add(button1, "button1")
win.WM_BUTTONS:add(button2, "button2")
win.WM_BUTTONS:add(button3, "button3")
win.WM_BUTTONS:add(button4, "button4")

function button1:onClick()
  panel1.zindex = 4
  panel2.zindex = 3
  panel3.zindex = 2
  panel4.zindex = 1
  win.WM:reorder()
  win.WM:apply()
end

function button2:onClick()
  panel1.zindex = 2
  panel2.zindex = 4
  panel3.zindex = 1
  panel4.zindex = 3
  win.WM:reorder()
  win.WM:apply()
end

function button3:onClick()
  panel1.zindex = 3
  panel2.zindex = 1
  panel3.zindex = 4
  panel4.zindex = 2
  win.WM:reorder()
  win.WM:apply()
end

function button4:onClick()
  panel1.zindex = 1
  panel2.zindex = 2
  panel3.zindex = 3
  panel4.zindex = 4
  win.WM:reorder()
  win.WM:apply()
end

function button5:onClick()
  win.WM:hide()
  win.WM_BUTTONS:disable()
end

function button6:onClick()
  win.WM:show()
  win.WM_BUTTONS:enable()
end

win.WM:apply()

ui.run(win):wait()

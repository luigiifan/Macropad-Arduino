#SingleInstance, Force
#NoTrayIcon
SendMode Input
SetWorkingDir, %A_ScriptDir%

Gui +Owner
Gui, -Caption +AlwaysOnTop
Gui, Color, black
Gui, Add, Picture, ,D:\Macropad\Mapping\map_coding.png
Gui, Add, Button, x180 y232 w50 h30 gClose_map, Close
Gui, Show, h285
Return

Close_map:
    ExitApp
Return
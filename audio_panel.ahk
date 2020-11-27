#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<^<+!1::
KeyDown := !KeyDown
If KeyDown
	SendInput {RAlt down}{/ down}
Else
	SendInput {RAlt up}{/ up}
Return

<^<+!4::
Run, C:\Users\Luigiifan\AppData\Local\Discord\app-0.0.308\Discord.exe
Return

#IfWinActive Meet -
<^<+!5::send, ^d
#IfWinActive
Return

#IfWinActive Meet -
<^<+!6::send, ^e
#IfWinActive
Return

<^<+!7::
Send, {Volume_Mute}
Return

<^<+!8::
Run, D:\Macropad\Panel\audio_gui.ahk
Return
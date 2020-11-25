#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

;Python Debug
#IfWinActive ahk_exe Code.exe
<^<+!1::
Send, {F5}
Sleep, 500
Send, {ENTER}
Return
#IfWinActive
;-----------------------------

;Hotkey for open folder
<^<+!2::FolderToggleOpen("D:\Udemy\Complete Python Developer in 2021 Zero to Mastery")
FolderToggleOpen(FolderPath) {
	For Window In ComObjCreate("Shell.Application").Windows {
		If (RTrim(Window.Document.Folder.Self.Path, "\") = RTrim(FolderPath, "\"))
			Return Window.Quit
	}
	Run, % FolderPath
}
;--------------------------------------------------------------------------------------

;Open Latest Part
<^<+!3::
Window = ahk_class Notepad
IfWinExist, %Window%
{
Send, ^s
MsgBox, ,Notepad ,Saving.., 1
Winclose, %Window%
}
else
run, C:\Users\Luigiifan\Desktop\Latest_Part.txt
Return
;-----------------------------------------------

;Open VSCode
<^<+!4::
Window = ahk_exe Code.exe
IfWinExist, %Window%
{
Winclose, %Window%
}
else
run, E:\Microsoft VS Code/Code.exe, E:\Microsoft VS Code
Return
;---------------------------------------------------------

#IfWinActive ahk_class SunAwtFrame
;Upload Sketch Arduino
<^<+!5::
Send, ^u
Return

;Open Sketch Arduino
<^<+!6::
Send, ^o
Return

;Manage Libraries Arduino
<^<+!7::
Send, ^+i
Return
#IfWinActive


;Verify Sketch Arduino
<^<+!8::
KeyWait, LCtrl, T0.3
KeyWait, LShift, T0.3
KeyWait, LAlt, T0.3
KeyWait, 8, T0.3
	
if (ErrorLevel){
Traytip, Exit, Macropad-01
ExitApp
KeyWait, LCtrl
KeyWait, LShift
KeyWait, LAlt
KeyWait, 8
}
else
Send, ^r
Return
;-------------------------------------------------------------

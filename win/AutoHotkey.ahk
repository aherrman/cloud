#SingleInstance

; Helper Functions -------------------------------------------------------------

ResizeAndCenter(w, h)
{
  ScreenWidth := GetScreenWidth()
  ScreenHeight := GetScreenHeight()
  WinMove A,,(ScreenWidth/2)-(w/2),(ScreenHeight/2)-(h/2),w,h
}

GetScreenWidth() {
  return A_ScreenWidth
}

GetScreenHeight() {
  WinGetPos,TX,TY,TW,TH,ahk_class Shell_TrayWnd,,,
  return A_ScreenHeight - TH
}

; Window Management ------------------------------------------------------------

#a::WinSet AlwaysOnTop, Toggle, A,,,

#1::
  ResizeAndCenter(800,600)
return

#2::
  ResizeAndCenter(1024,768)
return

#3::
  ResizeAndCenter(1280,1024)
return

#0::
  ScreenWidth := GetScreenWidth()
  ScreenHeight := GetScreenHeight()
  ResizeAndCenter((ScreenWidth - 100), (ScreenHeight - 100))
return

#-::
  WinGetPos,,,W,H,A
  WinMove a,,,,W-1,H-1
  WinMove a,,,,W,H
return

; Move window to left edge of screen

#Numpad7::
  WinMove A,,0,0,,
return

#Numpad4::
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,0,(SH/2) - (H/2),,
return

#Numpad1::
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,0,SH - H,,
return

; Move window to center of screen

#Numpad8::
  SW := GetScreenWidth()
  WinGetPos,,,W,H,A
  WinMove A,,(SW/2)-(W/2),0,,
return

#Numpad5::
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,(SW/2)-(W/2),(SH/2)-(H/2),,
return

#Numpad2::
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,(SW/2)-(W/2),SH-H,,
return

; Move window to right edge of screen

#Numpad9::
  SW := GetScreenWidth()
  WinGetPos,,,W,H,A
  WinMove A,,SW-W,0,,
return

#Numpad6::
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SW-W,(SH/2)-(H/2),,
return

#Numpad3::
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SW-W,SH-H,,
return

; Program Shortcuts ------------------------------------------------------------

#x::Run C:\cygwin\bin\mintty.exe -
#v::Run C:\Program Files\Vim\vim72\gvim.exe
#i::Run "C:\Program Files\Internet Explorer\iexplore.exe"

; Misc -------------------------------------------------------------------------

Capslock::Escape

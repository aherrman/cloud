#SingleInstance

; Helper Functions -------------------------------------------------------------

; Gets the edge that the taskbar is docked to.  Returns:
;   "top"
;   "right"
;   "bottom"
;   "left"
GetTaskbarEdge() {
  WinGetPos,TX,TY,TW,TH,ahk_class Shell_TrayWnd,,,

  if (TW = A_ScreenWidth) { ; Vertical Taskbar
    if (TY = 0) {
      return "top"
    } else {
      return "bottom"
    }
  } else { ; Horizontal Taskbar
    if (TX = 0) {
      return "left"
    } else {
      return "right"
    }
  }
}

GetScreenTop() {
  WinGetPos,TX,TY,TW,TH,ahk_class Shell_TrayWnd,,,
  TaskbarEdge := GetTaskbarEdge()

  if (TaskbarEdge = "top") {
    return TH
  } else {
    return 0
  }
}

GetScreenLeft() {
  WinGetPos,TX,TY,TW,TH,ahk_class Shell_TrayWnd,,,
  TaskbarEdge := GetTaskbarEdge()

  if (TaskbarEdge = "left") {
    return TW
  } else {
    return 0
  }
}

GetScreenWidth() {
  WinGetPos,TX,TY,TW,TH,ahk_class Shell_TrayWnd,,,
  TaskbarEdge := GetTaskbarEdge()

  if (TaskbarEdge = "top" or TaskbarEdge = "bottom") {
    return A_ScreenWidth
  } else {
    return A_ScreenWidth - TW
  }
}

GetScreenHeight() {
  WinGetPos,TX,TY,TW,TH,ahk_class Shell_TrayWnd,,,
  TaskbarEdge := GetTaskbarEdge()

  if (TaskbarEdge = "top" or TaskbarEdge = "bottom") {
    return A_ScreenHeight - TH
  } else {
    return A_ScreenHeight
  }
}

ResizeAndCenter(w, h)
{
  ScreenX := GetScreenLeft()
  ScreenY := GetScreenTop()
  ScreenWidth := GetScreenWidth()
  ScreenHeight := GetScreenHeight()

  WinMove A,,ScreenX + (ScreenWidth/2)-(w/2),ScreenY + (ScreenHeight/2)-(h/2),w,h
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

#-::
  WinGetPos,,,W,H,A
  WinMove a,,,,W-1,H-1
  WinMove a,,,,W,H
return

#0::
  ScreenWidth := GetScreenWidth()
  ScreenHeight := GetScreenHeight()
  ResizeAndCenter((ScreenWidth - 100), (ScreenHeight - 100))
return

; Move window to left edge of screen

#Numpad7::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  WinMove A,,SX,SY,,
return

#Numpad4::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SX,SY + (SH/2) - (H/2),,
return

#Numpad1::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SX,SY + SH - H,,
return

; Move window to center of screen

#Numpad8::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SW := GetScreenWidth()
  WinGetPos,,,W,H,A
  WinMove A,,SX + (SW/2)-(W/2),SY,,
return

#Numpad5::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SX + (SW/2)-(W/2),SY + (SH/2)-(H/2),,
return

#Numpad2::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SX + (SW/2)-(W/2),SY + SH-H,,
return

; Move window to right edge of screen

#Numpad9::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SW := GetScreenWidth()
  WinGetPos,,,W,H,A
  WinMove A,,SX + SW-W,SY,,
return

#Numpad6::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SX + SW-W,SY + (SH/2)-(H/2),,
return

#Numpad3::
  SX := GetScreenLeft()
  SY := GetScreenTop()
  SW := GetScreenWidth()
  SH := GetScreenHeight()
  WinGetPos,,,W,H,A
  WinMove A,,SX + SW-W,SY + SH-H,,
return

; Program Shortcuts ------------------------------------------------------------

#x::Run C:\cygwin\bin\mintty.exe -
#v::Run C:\Program Files\Vim\vim72\gvim.exe
#i::Run "C:\Program Files\Internet Explorer\iexplore.exe"

; Misc -------------------------------------------------------------------------

Capslock::Escape

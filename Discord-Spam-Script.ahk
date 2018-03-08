; Language:       English
; Author:         Qwerty-Space

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force ; Makes sure the script only runs one at a time.

#MaxThreadsPerHotkey 3
*f4::
#MaxThreadsPerHotkey 1
If SpamLoop {
    SpamLoop := False
    return
}
SpamLoop := True
Loop {
    Loop 9 {
        SendInput :smiley: ; Change ":smiley:" to whatever you
        SendInput {Enter}
        Sleep, 800
        if not SpamLoop
            break
    }
    Sleep, 5000
    if not SpamLoop
        break
}
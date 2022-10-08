#SingleInstance, Force

:*:co1::colorlib-regform-17
:*:conl::console.log(
:*:ph1::<?php ?>

:*:htt1::ttp://localhost/phpmyadmin/
:*:ht2::ttp://localhost/compitance

:*:gitc::git commit -m ""
:*:gitp::git push
:*:gitl::git clone

^1::
IfWinActive, ahk_exe chrome.exe
send, Abdulla Nsour
Sleep, 20
send, {tab}
send, alnsour.194{@}gmail.com
Sleep, 20
send, {tab}
send, 12345678
Sleep, 20
send, {tab}
send, 12345678
Return

;------------------------------ Profile 1 --------------------------------------

;-------------------------------------------------------------------------------
;-----------------------------  UP LEFT  ---------------------------------------
;-------------------------------------------------------------------------------
; <<< ^F13 : Chrome >>>|<<<  #F13 :   >>>|<<< +F13 :Text Do >>>|<<< !F13 :    >>>

f13:: ; Mouse Right up 

    IfWinNotExist, ahk_exe chrome.exe
        run, https://github.com/AbdullaNsour?tab=repositories
    IfWinActive, ahk_exe chrome.exe
        send, ^{Tab}
    else
        WinActivate, ahk_exe chrome.exe
return

^f13::
    GroupAdd, ChromeGroup, ahk_exe chrome.exe
    If WinActive("ahk_class Chrome_WidgetWin_1")
        GroupActivate, ChromeGroup, r
    else
        WinActivate ahk_exe chrome.exe
return

+f13::
    IfWinActive, ahk_exe chrome.exe
    send, ^+{Tab}
Return

;-------------------------------------------------------------------------------
;-----------------------------  DOWN LEFT  -------------------------------------
;-------------------------------------------------------------------------------
; <<< ^F14 : Chrome >>>|<<<  #F14 :   >>>|<<< +F14 :Text Do >>>|<<< !F14 :    >>>

f14:: 
    WinActivate, ahk_exe Code.exe
    ;WinActivate, ahk_exe WINWORD.EXE

return

^f14::
    send, +{f10}
    send, wt
Return

#f14::
    send, +{f10}
    ;send,
Return

;-------------------------------------------------------------------------------
;-----------------------------   UP Right  -------------------------------------
;-------------------------------------------------------------------------------
; <<<1> ^F15 : AHK-F >>>|<<<2>  #F15 :    >>>|<<<3> +F15 : Project-F  >>>|<<<4> !F15 : htdocs-F   >>>

F15:: ;Active Explorer and Switch between them
    GroupAdd, ExplorerGroup, ahk_class CabinetWClass
    if WinActive("ahk_exe explorer.exe")
        GroupActivate, ExplorerGroup, r
    else 
        WinActivate ahk_class CabinetWClass

return

;Open the AHK control Shortcut
^f15::
    run,"C:\Users\LENOVO\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
return

;Open the file project
+f15::
    run,"C:\xampp\htdocs\compitance"
return

;Open the file htdocs
!f15::
    run,"C:\xampp\htdocs"
return

;Open the file htdocs
#f15::
    run,"D:\AHK_shortcut"
return

;-------------------------------------------------------------------------------
;-----------------------------  DOWN Right  ------------------------------------
;-------------------------------------------------------------------------------

F16:: ; Mouse left Down
    WinActivate, ahk_exe Zoom.exe
    ;run,"C:\Users\LENOVO\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
return

^f16::
    IfWinNotExist, ahk_exe Discord.exe
        run, "C:\Users\LENOVO\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
    IfWinActive, ahk_exe Discord.exe
        send, ^{Tab}
    else
        WinActivate, ahk_exe Discord.exe

Return



;Discord
F19::
IfWinNotExist, ahk_exe Discord.exe
	run, "C:\Users\LENOVO\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
IfWinActive, ahk_exe Discord.exe
	send, ^{Tab}
else
	WinActivate, ahk_exe Discord.exe
return

f20::
send, !{f4}
return


F23::
IfWinNotExist, ahk_class CabinetWClass
	run, "D:\AHK"
else
	WinActivate, ahk_exe explorer.exe
	run, "D:\AHK"
return



F24::
IfWinNotExist, ahk_class CabinetWClass
	run, "C:\Users\LENOVO\OneDrive\Desktop\ALL\GitHub"
else
	WinActivate, ahk_exe explorer.exe
	run, "C:\Users\LENOVO\OneDrive\Desktop\ALL\GitHub"
return
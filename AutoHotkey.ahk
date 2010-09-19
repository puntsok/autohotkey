; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

; also doing win7 , see here http://lifehacker.com/5133039/windows-7-shortcuts-enables-the-best-win7-shortcuts-in-xp-or-vista

; CHRIS IMPORTANT! for matching ie
SetTitleMatchMode RegEx

; see http://www.autohotkey.com/forum/viewtopic.php?t=135
$^s::
	IfWinActive, %A_ScriptName%
	{
	   Send, ^s
	   SplashTextOn,,,Updated script,
	   Sleep,200
	   SplashTextOff
	   Reload
	}
	else
	   Send, ^s
return
$^,::
	if WinActive("Internet Explorer") or WinActive("Outlook") or WinActive("Firefox") or WinActive("Thunderbird") or WinActive("Mozilla Developer")
	{
		Send !t
		Sleep, 300
		Send o
	}
	if WinActive("Meeting Maker")
	{
		Send +^f
	}
	if WinActive("Komodo")
	{
		Send !ee
	}
	if WinActive("Opera")
	{
		Send ^{F12}
	}
	else
	{
		Send ^,
	}
return
$!^,:: ; ABOUT dialog
	Send !ha
return
^h::
	WinMinimize, A
return
^+]::
	Send ^{Tab}
return
^+[::
	Send ^+{Tab}
return
$^1::
	; if File Explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !vh ; View > Medium Icons
	}
	else
	{
		Send ^1
	}
return
$^2::
	; if File Explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !vd ; View > details
	}
	else
	{
		Send ^2
	}
return
$^3::
	; if File Explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !vl ; View > list
	}
	else
	{
		Send ^3
	}
return
$^Up::
	; if File Explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !vou ; up
	}
	else
	{
		Send ^{Up}
	}
return
$^]::
	; if File Explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !{Right}
	}
	else
	{
		Send ^]
	}
return
$^[::
	; if File Explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !{Left}
	}
	else
	{
		Send ^[
	}
return
$!^[::
	If WinActive("Thunderbird")
	{
		; view plain text email
		Send !vbp
	}
	else
	{
		Send !^[
	}
return
$!^]::
	If WinActive("Thunderbird")
	{
		; view html email
		Send !vbh
	}
	else
	{
		Send !^]
	}
return
^b::
	; bookmark sidebar
	; if interent explorer
	If WinActive("ahk_class IEFrame")
	{
		Send ^i
	}
	else
	{
	}
return
$^e::
	; if interent explorer
	If WinActive("ahk_class IEFrame")
	{
		Send {F12}
	}
	If WinActive("Opera")
	{
		Send !pdo
	}
	else
	{
		Send ^e
	}
return
$^y::
	{
		Send ^y
	}
return	
#h::
	; if interent explorer
	If WinActive("Word")
	{
		Send {BS}
	}
$^k::
	; if Outlook, mark as read
	If WinActive("Outlook")
	{
		Send ^q
	}
	If WinActive("Thunderbird")
	{
		Send m
	}
	If WinActive("Internet Explorer")
	{
		Send ^e
	}
	else
	{
		Send ^k
	}
return
^l::
	; select the address bar
	; if interent explorer
	If WinActive("ahk_class IEFrame") or WinActive("Chrome") or WinActive("Mozilla")
	{
		Send {F6}
	}
	If WinActive("Opera")
	{
		Send {F8}
	}
	
	else
	{
	}
return
$^m::
	; ADD ATTACHMENTS IN EMAIL CLIENTS
	; if message window in Outlook
	If WinActive("Message") or WinActive("Write")
	{
		Send !naf
	}
	; If Mozilla message write window
	If WinActive("Write")
	{
		Send !faf
	}
	else
	{
		Send ^m
	}
return
$+^m::
	If WinActive("Outlook")
	{
		Send !{F1}
	}
	else
	{
		Send +^m
	}
return
^+n::
	; if win explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !fwf
	}
	else
	{
	}
return
$^q::
	Send !{F4}
return
!^s::
	;; if win explorer
	If WinActive("ahk_class CabinetWClass")
	{
		Send !veo
	}
	else
	{
	}
return
+^s::
	;; save as
	If WinActive("Excel")
	{
		Send !fa
	}
	else
	{
	}
return
Ctrl & Tab::AltTab

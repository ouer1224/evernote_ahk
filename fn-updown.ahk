#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;!g::   ;; !->alt键   k->字母键k  + -->shift ^-->ctrl  #-->win  {Left}
;;Send {Down}   ;;输入 上 键
;;return

;#Include spaceFun.ahk
#Include evernoteeditor.ahk

#n::
Run Notepad
return


#b::
Run https://www.baidu.com/baidu.html?from=noscript
return


#t::
send time:%A_YYYY%-%A_MM%-%A_DD%   %A_Hour%:%A_Min%:%A_Sec%
return

;Control & Left::
;send {Home}
;return

;Control & Right::
;send {End}
;return








#IfWinActive, ahk_exe notepad++.exe
#/::
Send /**/
Send {Left}
Send {Left}
return

::!!fun::	;函数的功能说明模板
send /***********************************************
send ,{Enter}
Send *fun	:
send ,{Enter}
send *name	:
send , {Enter}
send *var	:
send ,{Enter}
send *return	:
send ,{Enter}
send ************************************************/
send ,{Enter}

return 




Ctrl & Down::
send,{PgDn}
return


#IfWinActive

#IfWinActive, ahk_exe sourceinsight4.exe 
#/::
Send /**/
Send {Left}
Send {Left}
return

::!!fun::	;函数的功能说明模板
send /***********************************************
send ,{Enter}
Send *fun	:
send ,{Enter}
send *name	:
send , {Enter}
send *var	:
send ,{Enter}
send *return	:
send ,{Enter}
send ************************************************/
send ,{Enter}

return 

return





#IfWinActive


;#'::
;Send '''
;Send {Right}{Right}{Right}
;Send {Backspace}{Backspace}{Backspace}
;return


#IfWinActive, ahk_exe Evernote.exe

^!p::
Send, ^d
WinWaitActive,Font,,2
Send tahoma{enter}
return

global zhead:=0		;;用于切换head 和txt的标志

::zh::
:*:/head::
;sleep 20
;send , {BackSpace}
::#::
LControl & /::
zhead:=0
;Sleep 100
;Send, ^d
;sleep 300
;Send {tab}
;sleep 50
;Send {tab}
;sleep 50
;Send 15
;sleep 50
;Send {enter}
MouseGetPos xpos,ypos
sleep 5
MouseClick,,780,270
sleep 100
MouseClick,,742,413	;11
sleep 10
MouseMove,xpos,ypos
return



::zt::
:*:/txt::
RControl & /::
^`::
MouseGetPos xpos,ypos
sleep 5
MouseClick,,780,270
sleep 100
if zhead=0
{
	zhead:=1
	MouseClick,,742,368	;11
}
else
{
	zhead:=0
	MouseClick,,742,413	;14
}
sleep 10
MouseMove,xpos,ypos
return






::ch::
:*:/ch::
^h::
sleep 20
Send, ^+h
sleep 200
Send,^b
sleep 20
;send,{space}
return


;::@::
:*:/code::
Sleep 20
Send, ^+l
return

:*:/excel::
MouseGetPos xpos,ypos
sleep 5
MouseClick,,1473,266
sleep 10
MouseClick,,1500,363	;1*2的表格
MouseMove,xpos,ypos
return

:*:/cb::
LControl & 1::
MouseGetPos xpos,ypos
sleep 5
MouseClick,,820,263
sleep 10
MouseClick,,834,317	;default color
MouseMove,xpos,ypos
sleep 20
send,{space}
return

:*:/cr::
LControl & 2::
MouseGetPos xpos,ypos
Sleep 5
MouseClick,,820,263
Sleep 10
MouseClick,,1030,392	;red
sleep 20
send,{space}
MouseMove,xpos,ypos


^9::
Send, ^d
;WinWaitActive,Font,,2
sleep 200
Send {tab}{tab}13{enter}
return



^[::
Send, ^+m
return 


^]::
Send, ^m
return 


LControl & p::
MouseGetPos xpos,ypos
MsgBox %xpos%   %ypos%
return 



return

::ftw::Free the whales
return


#IfWinActive

#IfWinActive ahk_class Notepad
^/::
Send notepad
return


#IfWinActive 






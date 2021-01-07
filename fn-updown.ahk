#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;!g::   ;; !->alt键   k->字母键k  + -->shift ^-->ctrl  #-->win  {Left}
;;Send {Down}   ;;输入 上 键
;;return


#n::
Run Notepad
return


#b::
Run https://www.baidu.com/baidu.html?from=noscript
return


#t::
send time:%A_YYYY%-%A_MM%-%A_DD%   %A_Hour%:%A_Min%:%A_Sec%
return


#IfWinActive, ahk_exe sourceinsight4.exe
#/::
Send /**/
Send {Left}
Send {Left}
return

::!!fun::
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


:*:/head::
;sleep 20
;send , {BackSpace}
::#::
LControl & /::
Sleep 300
Send, ^d
;WinWaitActive,Font,,2
sleep 200
Send {tab}{tab}15{enter}
return


:*:/txt::
RControl & /::
^`::
Send, ^d
;WinWaitActive,Font,,2
sleep 300
Send {tab}{tab}11{enter}
return

:*:/ch::
Send, ^+h
Send,^b
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
return

:*:/cr::
LControl & 2::
MouseGetPos xpos,ypos
Sleep 5
MouseClick,,820,263
Sleep 10
MouseClick,,1030,392	;red
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

::!::
^]::
Send, ^m
return 


LControl & q::
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






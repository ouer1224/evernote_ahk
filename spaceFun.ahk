


;SpaceFn
#inputlevel,2
$Space::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, Space 		;Space
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$Space" and A_TimeSinceThisHotkey<300)
        Send {Blind}{Space DownR}
    return

#inputlevel,1
F24 & i::Up
F24 & k::Down
F24 & j::Left
F24 & l::Right
F24 & u::Home
F24 & o::End
F24 & n::PgUp
F24 & m::PgDn


return

RCtrl & a::Send {Left}
RCtrl & d::Send {Right}
RCtrl & s::Send {Down}
RCtrl & w::Send {Up}
RCtrl & q::Send ^{Home}
RCtrl & e::Send ^{End}
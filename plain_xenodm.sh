#!/bin/sh

echo '
xlogin.Login.background:       black
xlogin.Login.inpColor:         black

xlogin.Login.foreground:       white
xlogin.Login.face:             monospace:size=11

! Monospace greeting
!xlogin*greeting:               CLIENTHOST
!xlogin*unsecureGreeting:       CLIENTHOST # unsecure
!xlogin*greetFace:              monospace:size=11
!xlogin*greetColor:             grey
!xlogin.Login.height:           164

! No greeting
xlogin.Login.greeting:
xlogin.Login.unsecureGreeting:
xlogin.Login.greetFace:        monospace:size=4
xlogin.Login.greetColor:       black
xlogin.Login.height:           87

xlogin.Login.namePrompt:       login\\040
xlogin.Login.passwdPrompt:     pass\\040\\040\\040
xlogin.Login.promptFace:       monospace:size=11
xlogin.Login.promptColor:      grey

xlogin.Login.fail:             Login incorrect
xlogin.Login.failFace:         monospace:size=11
xlogin.Login.failColor:        red

xlogin.Login.logoFileName:
xlogin.logoPadding: 0

xlogin.Login.hiColor:          #202020
xlogin.Login.shdColor:         #202020
xlogin.Login.frameWidth:       1
xlogin.Login.innerFramesWidth: 0

xlogin.Login.echoPasswd:       true
xlogin.Login.echoPasswdChar:   *

xlogin.Login.width:            412
xlogin.Login.borderWidth:      0
xlogin.Login.sepWidth:         0
' > /etc/X11/xenodm/Xresources

echo '#!/bin/sh
xset r rate 250 25
xsetroot -solid black' > /etc/X11/xenodm/Xsetup_0

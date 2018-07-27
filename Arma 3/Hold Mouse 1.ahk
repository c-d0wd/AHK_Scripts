#SingleInstance, Force

;Arma 3 Hold mouse 1 down
;Author: VGNegative (Rijul Ahuja [AHK.com])
;Last Edit: 10 April 2018

F1::Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )

ExitApp
^+x::ExitApp ;Default keys for killing scripts
#SingleInstance Force

;Warframe: Auto Energize Bubble
;Author: VGNegative
;Last Edit: 8 February 2018


;Key Binding
F2::
{
	;Go Into Operator mode and create bubble
	Send 5
	Sleep 100
	Send {Ctrl down}
	Sleep 100
	Send {Space}
	Sleep 100
	Send {Ctrl up}
	Sleep 100
	Send 5
	Sleep 50
	return
}

ExitApp
^+x::ExitApp ;Default keys for killing scripts

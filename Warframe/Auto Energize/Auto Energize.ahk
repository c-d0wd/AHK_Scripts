#SingleInstance Force

;Warframe: Auto Energize Bubble
;Author: VGNegative
;Last Edit: 8 February 2018


;Key Binding
F2::
{
	;Go Into Operator mode and create bubble
	Send 5
	Sleep 90
	Send {Ctrl down}
	Sleep 90
	Send {Space}
	Sleep 90
	Send {Ctrl up}
	Send 5
}

ExitApp
^+x::ExitApp ;Default keys for killing scripts

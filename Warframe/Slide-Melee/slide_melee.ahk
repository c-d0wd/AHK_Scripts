#SingleInstance, Force 

;Warframe Slide Macro
;Author: VGNegative
;Last Edit: 7 February 2018

;Allow Multiple inputs per instance. Allows you to stop once the loop is started
#MaxThreadsPerHotkey 3

;Initialize the type to 0. (0 = Off; 1 = slow speed; 2 = fast speed; > 2 will turn off the loop)
t:= 0

;Deault Key bind, can be whatever
F1:: 
{
	;If the loop is off
	if (t = 0)
	{
		;Turn on at slow speed (j = speed delay var in ms)
		t = 1
		j:= 560
	}
	;If the loop is already on...
	else if (t = 1)
	{
		;crank it up to fast speed.
		t = 2
		j:= 350
	}
	;If the loop is already on fast speed...
	else if (t >= 2)
	{
		;Stop Walking, reset t, and restart the script
		Send {w up}
		t = 0
		Reload
	}
	;Check if the loop should run (1 & above)
	if (t > 0)
	{
		;Start walking and wait 250ms
		Send {w down}
		Sleep 250

		;While the loop should be running
		while(t > 0)
		{
			;Do the key combo for slide-melee
			Send {Ctrl down}
			Sleep 20
			Send {e down}
			Sleep 20
			Send {e up}
			Send {Ctrl up}
			Sleep j
		}
			return	
	}
	return
}

ExitApp

^+x:: ExitApp ;Default keys for killing scripts

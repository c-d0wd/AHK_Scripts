#SingleInstance, Force 

;Warframe Slide Macro
;Author: VGNegative
;Last Edit: 7 February 2018

;Allow Multiple inputs per instance. Allows you to stop once the loop is started
#MaxThreadsPerHotkey 2

;Initialize the type to 0. (0 = Off; 1 = slow speed; 2 = fast speed; > 2 will turn off the loop)
t:= 0

SendMode Input
SetTitleMatchMode, 2

;Deault Key bind, can be whatever

#IfwinActive Roblox

; For Money farming
F1:: 
{
	;If the loop is off
	if (t = 0)
	{
		t = 1
	}
	;If the loop is already on...
	else if (t = 1)
	{
		t = 0
		Send {w up}
		Send {a up}
		Send {s up}
		Send {d up}
		Click up
	
	}

	;Check if the loop should run (1 & above)
	if (t > 0)
	{
		
		Click, down
		Send {w down}
	
		x:= 0
		while(t > 0)
		{
			IfWinNotActive Roblox
			{
				Send {w up}
				Click up
				return
			}else{
				if (x = 3)
				{
					Click up
					Send {Click 2400 370}
					Sleep 25
					Send {Click 1300 600}
					Sleep 25
					Click down
					x = 0
				}
				else
				{
					x++
					Sleep 100
				}
			}
		}
	}
	return
}

;For lifting + walking
F2:: 
{
	;If the loop is off
	if (t = 0)
	{
		t = 1
	}
	;If the loop is already on...
	else if (t = 1)
	{
		t = 0
		Send {w up}
		Click up
	}

	;Check if the loop should run (1 & above)
	if (t > 0)
	{

		while(t > 0)
		{
			IfWinNotActive Roblox
			{
				Send {w up}
				Click up
				return
			}else{
			
				Click down
				Sleep 50
				Click up

				Send {w down}
				Sleep 50
				Send {w up}
			}
		}
	}
	return
}

;Holding mouse1 (no AFK-kick prevention)
F3::
{
	;If the loop is off
	if (t = 0)
	{
		t = 1
	}
	;If the loop is already on...
	else if (t = 1)
	{
		t = 0
		Click up
	}

	;Check if the loop should run (1 & above)
	if (t > 0)
	{
			
		while (t > 0)
		{
			IfWinNotActive Roblox
			{
				Click up
				return
			}else{
				Click down
				Sleep 50
				Click up
			}
		}
	}
	return
}

#IfWinActive

ExitApp

^+x:: ExitApp ;Default keys for killing scripts

#SingleInstance, Force 

;Warframe Slide Macro


#MaxThreadsPerHotkey 3
t:= 0
F8::
{
	if (t = 0)
	{
		t = 1
		j:= 560
	}
	else if (t = 1)
	{
		t = 2
		j:= 410
	}
	else if (t = 2)
		t = 0
		
	if (t > 0)
	{
		Send {w down}
		Sleep 250

		
		while(t > 0)
		{
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
	else
		Send {w up}
		
	return
}

ExitApp
^x:: ExitApp

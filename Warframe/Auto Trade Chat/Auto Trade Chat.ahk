#SingleInstance Force

;Warframe Auto Trade Chat
;Author: VGNegative
;Last Edit: 8 February 2018

;Next implementation will be a help GUI to make things less confusing.

F3::
{
	GoSub CreateGUI
	return
}

;Creates all GUI elements like text and text-boxes to be filled
CreateGUI:
{
	Gui, MyGui:New,,Trade Chat Automator
	Gui, Add, Text,, Item #1:
	Gui, Add, Edit, w150 vItem1
	
	Gui, Add, Text,,Item #2:
	Gui, Add, Edit, w150 vItem2
	
	Gui, Add, Text,,Item #3:
	Gui, Add, Edit, w150 vItem3
	
	Gui, Add, Text,,Item #4:
	Gui, Add, Edit, w150 vItem4
	
	Gui, Add, Text,,Item #5:
	Gui, Add, Edit, w150 vItem5
	
	
	Gui, Add, Text,x200 y5, Item #6:
	Gui, Add, Edit, w150 vItem6
	
	Gui, Add, Text,x200 y51,Item #7:
	Gui, Add, Edit, w150 vItem7
	
	Gui, Add, Text,x200 y97,Item #8:
	Gui, Add, Edit, w150 vItem8
	
	Gui, Add, Text,x200 y143,Item #9:
	Gui, Add, Edit, w150 vItem9
	
	Gui, Add, Text,x200 y191,Item #10:
	Gui, Add, Edit, w150 vItem10
	
	Gui, Add, Button, gSubmitGUI x115 W100, Submit Items
	
	Gui, Show, W360 H275
	return
}


;Takes the information from the GUI and formats it for output to the game chat
SubmitGUI:
{
	;Passes GUI info to the assigned variables
	Gui, submit
	return
}

;This key will make the text appear in the screen
!+s::
{
	;Open the chat
	Send t

	/*
	*This sequence of if/else statments checks if each element is empty
	*It will not print if empty
	*If the element before it is empty, then it will print something different
	*This prevents any out of place characters if some boxes are not used
	*It will not press enter if all 1-5 are empty and move to 6-10
	*Then the process repeats for 6-10
	*/
	if (item1 <> "")
		Send %item1%{Space}
	if (item2 <> "")
		if(item1 = "")
			Send %item2%{Space}
		else
			Send | %item2%{Space}
	if (item3 <> "")
		if(item2 = "")
			Send %item3%{Space}
		else
			Send | %item3%{Space}
	if (item4 <> "")
		if(item3 = "")
			Send %item4%{Space}
		else
			Send | %item4%{Space}
	if (item5 <> "")
		if(item4 = "")
			Send %item5%{Space}
		else
			Send | %item5%{Space}
			
			
	if (item1 <> "" && item2 <> "" && item3 <> "" && item4 <> "" && item5 <> "")
	{
		Send {Enter}
		Sleep 5000
		Send t
	}
	
	if (item6 <> "")
		Send %item6%{Space}
	if (item7 <> "")
		if(item6 = "")
			Send %item7%{Space}
		else
			Send | %item7%{Space}
	if (item8 <> "")
		if(item7 = "")
			Send %item8%{Space}
		else
			Send | %item8%{Space}
	if (item9 <> "")
		if(item8 = "")
			Send %item9%{Space}
		else
			Send | %item9%{Space}
	if (item10 <> "")
		if(item9 = "")
			Send %item10%{Space}
		else
			Send | %item10%{Space}
			
	if (item6 <> "" && item7 <> "" && item8 <> "" && item9 <> "" && item10 <> "")
		Send {Enter}

	return
}

ExitApp
^+x::ExitApp ;Default keys for killing scripts
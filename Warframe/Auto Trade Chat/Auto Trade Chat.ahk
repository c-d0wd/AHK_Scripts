#SingleInstance Force

;Warframe Trade Chat Automator

item1= [Carrier Prime]BP 15p
item2= [Carrier Prime]BP 15p
item3= [Carrier Prime]BP 15p
item4= [Carrier Prime]BP 15p
item5= [Carrier Prime]BP 15p
item6= [Carrier Prime]BP 15p
item7= [Carrier Prime]BP 15p
item8= [Carrier Prime]BP 15p
item9= [Carrier Prime]BP 15p
item10= [Carrier Prime]BP 15p

;--------------------------------------------------------------------------------------

F1::
{
	Send t
	Sleep 50
	Send %item1% | %item2% | %item3% | %item4% | %item5%
	Send {Enter}
	Sleep 5000    ;121000
	Send t
	Sleep 50
	Send %item6% | %item7% | %item8% | %item9% | %item10%
	Send {Enter}
}

ExitApp
^x::ExitApp

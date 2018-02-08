#SingleInstance Force
image_name=Search.png
if 1    ; screen coordinates
coord=Client
else
coord=relative
CoordMode, ToolTip, %coord%
CoordMode, Pixel, %coord%
CoordMode, Mouse, %coord%
CoordMode, Caret, %coord%
CoordMode, Menu, %coord%
SetTimer, WatchCursor, 100
return

WatchCursor:
MouseGetPos,xpos , ypos , id, control
return

f1::

ImageSearch, FoundX, FoundY, 0, 0, 4480, 1080, %image_name%

if ErrorLevel = 2
{
tooltip Could not conduct the search.
Sleep 500
tooltip
}
else if ErrorLevel = 1
{
tooltip Image could not be found on the screen.
Sleep 500
tooltip
}
else
{
foundx += 5
foundy += 5
mousemove, %FoundX%, %FoundY%, 10

}
return	
ExitApp
^x::ExitApp

#SingleInstance Force
image_name=Search.png
if 1    ;Screen coordinates
  coord=Client ;Allows for searching based on coords combined height and width (4480x1080)
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

  ImageSearch, FoundX, FoundY, 0, 0, 4480, 1080, %image_name% ;(4480x1080 = 2560x1080 & 1920x1080 together)

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
^x::ExitApp ;My default to exit scripts

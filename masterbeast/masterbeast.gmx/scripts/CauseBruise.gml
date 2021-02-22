///CauseBruise(x,y,intensity(0-1))

ThisBruise = instance_create(mouse_x,mouse_y,oBruise)
ThisBruise.RootedX = argument0
ThisBruise.RootedY = argument1
ThisBruise.Rotation = random(360)
ThisBruise.Intensity = argument2
ThisBruise.TopXScale = 0.3 * ThisBruise.Intensity
ThisBruise.TopYScale = ThisBruise.TopXScale 
ThisBruise.HoldTime = 5000 * ThisBruise.Intensity
WriteToLog("Caused a bruise at " + string(ThisBruise.RootedX) + ", " + string(ThisBruise.RootedY))

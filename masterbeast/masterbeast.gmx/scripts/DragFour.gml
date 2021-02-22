if FourFingerJustTouched() {
FourDragStart = true
FourDragOutput[IsHappening] = true
FourDragOutput[Direction] = 0
FourDragOutput[Speed] = 0
FourDragOutput[LastX] = device_mouse_x(Finger4)
FourDragOutput[LastY] = device_mouse_y(Finger4)
FourDragOutput[IsFlick] = false
}

if FourFingerRelease() {
FourDragStart = false
FourDragOutput[IsHappening] = false
FourDragOutput[Direction] = 0
FourDragOutput[Speed] = 0
FourDragOutput[X] = 0
FourDragOutput[Y] = 0
FourDragOutput[LastX] = 0
FourDragOutput[LastY] = 0
FourDragOutput[IsFlick] = false
}

if FourDragStart = true and FourFingerContinuePress() {
FourDragOutput[X] = device_mouse_x(Finger4)
FourDragOutput[Y] = device_mouse_y(Finger4)
FourDragOutput[Direction] = point_direction(FourDragOutput[LastX],FourDragOutput[LastY],FourDragOutput[X],FourDragOutput[Y])
FourDragOutput[Speed] = point_distance(FourDragOutput[LastX],FourDragOutput[LastY],FourDragOutput[X],FourDragOutput[Y])
if FourDragOutput[Speed] > 10 {
FourDragOutput[IsFlick] = true
}
FourDragOutput[LastX] = device_mouse_x(Finger4)
FourDragOutput[LastY] = device_mouse_y(Finger4)
}

return FourDragOutput

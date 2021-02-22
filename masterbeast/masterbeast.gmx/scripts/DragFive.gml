if FiveFingerJustTouched() {
FiveDragStart = true
FiveDragOutput[IsHappening] = true
FiveDragOutput[Direction] = 0
FiveDragOutput[Speed] = 0
FiveDragOutput[LastX] = device_mouse_x(Thumb)
FiveDragOutput[LastY] = device_mouse_y(Thumb)
FiveDragOutput[IsFlick] = false
}

if FiveFingerRelease() {
FiveDragStart = false
FiveDragOutput[IsHappening] = false
FiveDragOutput[Direction] = 0
FiveDragOutput[Speed] = 0
FiveDragOutput[X] = 0
FiveDragOutput[Y] = 0
FiveDragOutput[LastX] = 0
FiveDragOutput[LastY] = 0
FiveDragOutput[IsFlick] = false
}

if FiveDragStart = true and FiveFingerContinuePress() {
FiveDragOutput[X] = device_mouse_x(Thumb)
FiveDragOutput[Y] = device_mouse_y(Thumb)
FiveDragOutput[Direction] = point_direction(FiveDragOutput[LastX],FiveDragOutput[LastY],FiveDragOutput[X],FiveDragOutput[Y])
FiveDragOutput[Speed] = point_distance(FiveDragOutput[LastX],FiveDragOutput[LastY],FiveDragOutput[X],FiveDragOutput[Y])
if FiveDragOutput[Speed] > 10 {
FiveDragOutput[IsFlick] = true
}
FiveDragOutput[LastX] = device_mouse_x(Thumb)
FiveDragOutput[LastY] = device_mouse_y(Thumb)
}

return FiveDragOutput

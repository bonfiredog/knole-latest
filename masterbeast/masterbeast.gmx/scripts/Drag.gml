
if device_mouse_check_button_pressed(0,mb_any) and OneDragStart = false {
OneDragStart = true
OneDragOutput[Finished] = false
OneDragOutput[Direction] = 0
OneDragOutput[Speed] = 0
LastX = device_mouse_x(0)
LastY = device_mouse_y(0)
OneDragOutput[IsFlick] = false
DragTimer = 0
}

if OneDragStart = true {

if device_mouse_check_button_pressed(0,mb_any) {
DragTimer += 1
}

if device_mouse_check_button_released(0,mb_any) {
OneDragOutput[Finished] = true
OneDragOutput[Direction] = point_direction(LastX,LastY,device_mouse_x(0),device_mouse_y(0))
OneDragOutput[Speed] = point_distance(LastX,LastY,device_mouse_x(0),device_mouse_y(0)) / (Timer / 60)
if OneDragOutput[Speed] > 20 {
OneDragOutput[IsFlick] = true
}
OneDragStart = false
return OneDragOutput
}
}

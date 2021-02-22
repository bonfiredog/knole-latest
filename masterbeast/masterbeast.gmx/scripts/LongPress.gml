///LongPress1()

if device_mouse_check_button_pressed(0,mb_any) {
OnePressed = true
PressTimer = 60
}

if OnePressed = true {
PressTimer -= 1

if device_mouse_check_button_released(0,mb_any) {

if PressTimer <= 0 {
return true
PressTimer = 0
OnePressed = false
} else {
return false
PressTimer = 0
OnePressed = false
}
}
}

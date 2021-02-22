///LongPress2()

if TwoFingerJustTouched() {
TwoPressed = true
PressTimer = 60
}

if TwoPressed = true {
PressTimer -= 1

if TwoFingerRelease() {

if PressTimer <= 0 {
return true
TwoPressed = false
} else {
return false
PressTimer = 0
TwoPressed = false
}
}
}

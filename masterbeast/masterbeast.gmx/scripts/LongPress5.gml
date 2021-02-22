///LongPress5()

if FiveFingerJustTouched() {
FivePressed = true
PressTimer = 60
}

if FivePressed = true {
PressTimer -= 1

if FiveFingerRelease() {

if PressTimer <= 0 {
return true
FivePressed = false
} else {
return false
PressTimer = 0
FivePressed = false
}
}
}

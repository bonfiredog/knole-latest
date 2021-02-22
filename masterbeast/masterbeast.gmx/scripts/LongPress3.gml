///LongPress3()

if ThreeFingerJustTouched() {
ThreePressed = true
PressTimer = 60
}

if ThreePressed = true {
PressTimer -= 1

if ThreeFingerRelease() {

if PressTimer <= 0 {
return true
ThreePressed = false
} else{
return false
PressTimer = 0
ThreePressed = false
}
}
}

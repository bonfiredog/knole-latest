///LongPress3()

if FourFingerJustTouched() {
FourPressed = true
PressTimer = 60
}

if FourPressed = true {
PressTimer -= 1

if FourFingerRelease() {

if PressTimer <= 0{
return true
FourPressed = false
} else {
return false
PressTimer = 0
FourPressed = false
}
}
}

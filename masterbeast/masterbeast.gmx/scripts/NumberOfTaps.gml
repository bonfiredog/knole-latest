///NumberOfTaps()

if device_mouse_check_button_released(0,mb_any) and OneCountingTapsNumber = false {
OneTapNumberTimer = 60
OneTapNumberNumber = 1
OneCountingTapsNumber = true
}

if OneCountingTapsNumber = true {
OneTapNumberTimer -= 1

if device_mouse_check_button_released(0, mb_any) {
OneTapNumberNumber += 1
OneTapNumberTimer = 60
}

if OneTapNumberTimer <= 0 {
OneTapNumberTimer = 60
OneCountingTapsNumber = false
return OneTapNumberNumber
}
}

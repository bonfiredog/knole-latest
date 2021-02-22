///MultipleTaps(desired_number)

Number = argument0

if device_mouse_check_button_released(0,mb_any) and OneCountingTaps = false {
OneTapTimer = 60
OneTapNumber = 1
OneCountingTaps = true
}

if OneCountingTaps = true {
OneTapTimer -= 1

if device_mouse_check_button_released(0,mb_any) {
OneTapNumber += 1
OneTapTimer = 60
}
}

if OneTapTimer <= 0 {
if OneTapNumber = Number {
OneTapTimer = 0
OneTapNumber = 0
OneCountingTaps = false
return true
} else {
OneTapTimer = 0
OneTapNumber = 0
OneCountingTaps = false
return false
}
}


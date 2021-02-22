///MultipleTaps2(number)

Number = argument0

if TwoFingerRelease() and TwoCountingTaps = false {
TwoTapTimer = 60
TwoTapNumber += 1
TwoCountingTaps = true
}



if TwoCountingTaps = true {
TwoTapTimer -= 1

if TwoFingerRelease() {
TwoTapNumber += 1
TwoTapTimer = 60
}

if TwoTapTimer <= 0 {

if TwoTapNumber = Number {
return true
} else {
return false
}

TwoTapTimer = 60
TwoTapNumber = 0
TwoCountingTaps = false
}
}

///MultipleTaps5(number)

Number = argument0

if FiveFingerRelease() and FiveCountingTaps = false {
FiveTapTimer = 60
FiveTapNumber += 1
FiveCountingTaps = true
}



if FiveCountingTaps = true {
FiveTapTimer -= 1

if FiveFingerRelease() {
FiveTapNumber += 1
FiveTapTimer = 60
}

if FiveTapTimer <= 0 {

if FiveTapNumber = Number {
return true
} else {
return false
}

FiveTapTimer = 60
FiveTapNumber = 0
FiveCountingTaps = false
}
}

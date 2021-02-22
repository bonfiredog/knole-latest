///MultipleTaps4(number)

Number = argument0

if FourFingerRelease() and FourCountingTaps = false {
FourTapTimer = 60
FourTapNumber += 1
FourCountingTaps = true
}



if FourCountingTaps = true {
FourTapTimer -= 1

if FourFingerRelease() {
FourTapNumber += 1
FourTapTimer = 60
}

if FourTapTimer <= 0 {

if FourTapNumber = Number {
return true
} else {
return false
}

FourTapTimer = 60
FourTapNumber = 0
FourCountingTaps = false
}
}

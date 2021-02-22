///NumberOfTaps4()

if FourFingerRelease() and FourCountingTaps = false {
FourTapTimer = 60
FourTapNumber += 1
FourCountingTaps = true
}

if FourCountingTaps = true {
FourTapTimer -= 1

if FourFingerRelease() {
FourFourTapNumber += 1
FourTapTimer = 60
}

if FourTapTimer <= 0 {

return FourTapNumber
FourTapTimer = 60
FourTapNumber = 0
FourCountingTaps = false
}
}

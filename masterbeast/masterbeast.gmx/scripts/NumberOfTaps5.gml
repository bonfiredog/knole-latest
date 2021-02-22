///NumberOfTaps5()

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

return FiveTapNumber
FiveTapTimer = 60
FiveTapNumber = 0
FiveCountingTaps = false
}
}

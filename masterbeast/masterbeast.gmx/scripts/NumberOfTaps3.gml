///NumberOfTaps3()

if ThreeFingerRelease() and ThreeCountingTaps = false {
ThreeTapTimer = 60
ThreeTapNumber += 1
ThreeCountingTaps = true
}

if ThreeCountingTaps = true {
ThreeTapTimer -= 1

if ThreeFingerRelease() {
ThreeTapNumber += 1
ThreeTapTimer = 60
}

if ThreeTapTimer <= 0 {

return ThreeTapNumber
ThreeTapTimer = 60
ThreeTapNumber = 0
ThreeCountingTaps = false
}
}

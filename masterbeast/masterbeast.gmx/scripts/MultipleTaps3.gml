///MultipleTaps3(number)

Number = argument0

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

if ThreeTapNumber = Number {
return true
} else {
return false
}

ThreeTapTimer = 60
ThreeTapNumber = 0
ThreeCountingTaps = false
}
}

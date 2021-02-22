///StopEyeSquint(slow?)

with mBehavioursReactive {
SquintingActive = false
DesiredSquintLevel = 0
SquintingTimed = false
SquintTime = 0
}

StartBlinkBehaviour()

if argument0 = true {
StartEyeMovement(oEyeballLeft,1,9)
StartEyeMovement(oEyeballRight,1,9)
} else {
StartEyeMovement(oEyeballLeft,0,9)
StartEyeMovement(oEyeballRight,0,9)
}




///MoveBackForward(retreatorcomeforward,numberofstepstocomplete,amountof%tochange)

with mBehavioursDeliberative {
if mInterfaceController.SequenceBegun = true {
StartShiverBehaviour(20,irandom_range(20,30),5)
} else {
if MovingActive = false  {
MovingActive = true
}
WriteToLog("Moved back or forward.")
MovingDir = argument0
MovingTimer = 0
MovingSpeed = argument1
MoveCalc = false
if argument0 = "retreat" {
if PercentForward <= 50 {
MovingChange = 0
} else if PercentForward > 50 {
if argument2 > (PercentForward - 50) {
MovingChange = (PercentForward - 50)
} else {
MovingChange = argument2
}
}
} else {
MovingChange = argument2
}
}
}

///MoveBackForwardUnCapped(retreatorcomeforward,numberofstepstocomplete,amountof%tochange)

with mBehavioursDeliberative {
if mInterfaceController.SequenceBegun = true {
StartShiverBehaviour(20,irandom_range(20,30),5)
} else {
if MovingActive = false {
MovingActive = true
}
WriteToLog("Moved back or forward.")
MovingDir = argument0
MovingTimer = 0
MovingChange = argument2
MovingSpeed = argument1
MoveCalc = false
}
}


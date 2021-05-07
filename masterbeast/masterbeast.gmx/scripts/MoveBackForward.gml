///MoveBackForward(retreatorcomeforward,numberofstepstocomplete,amountof%tochange)

with mBehavioursDeliberative {



if mBehavioursReactive.Sleeping = true {
MovingActive = false 
}

if mInterfaceController.SequenceBegun = true
or (instance_exists(oEarLeft) and oEarLeft.Pulling = true)
or (instance_exists(oEarRight) and oEarRight.Pulling = true)
or (instance_exists(oHornLeft) and oHornLeft.Pulling = true)
or (instance_exists(oHornRight) and oHornRight.Pulling = true) 

{
if IsInRitual() = false {
CantEscapeReactions()
}
MovingActive = false
} else {


if mInterfaceController.CurrentView = MicroView and argument0 = "retreat" {
StartZoom(ZoomSpeedCalc(),300,675)
with mInterfaceController {
MovingBackAfter = true
MovingBackSteps = argument1
MovingBackAmount = argument2
MovingBackAfterCapped = true
}
} else {


if mInterfaceController.CurrentView = MacroView and view_yview[0] != 1000 and mBehavioursDeliberative.PercentForward >= 100 {
MoveToXY(500,1000,20,MacroView,ZoomSpeedCalc())
with mBehavioursDeliberative {
MovingBackAfter = true
MovingBackSteps = argument1
MovingBackAmount = argument2
MovingBackAfterCapped = true
}
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
if (100 - PercentForward) < argument2 {
MovingChange = 100 - PercentForward
} else {
MovingChange = argument2
}
}
}
}
}
}

///MoveBackForwardUnCapped(retreatorcomeforward,numberofstepstocomplete,amountof%tochange)

with mBehavioursDeliberative {

if mBehavioursReactive.Sleeping = true {
MovingActive = false 
}

if (mInterfaceController.SequenceBegun = true
or mInterfaceController.GrabbingBodyPart = true
or (instance_exists(oEarLeft) and oEarLeft.Pulling = true)
or (instance_exists(oEarRight) and oEarRight.Pulling = true)
or (instance_exists(oHornLeft) and oHornLeft.Pulling = true)
or (instance_exists(oHornRight) and oHornRight.Pulling = true))
and argument0 = "retreat"
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
MovingBackAfterCapped = false
}
} else {


if mInterfaceController.CurrentView = MacroView and view_yview[0] != 1000 and mBehavioursDeliberative.PercentForward >= 100 {
MoveToXY(500,1000,20,MacroView,ZoomSpeedCalc())
with mBehavioursDeliberative {
MovingBackAfter = true
MovingBackSteps = argument1
MovingBackAmount = argument2
MovingBackAfterCapped = false
}
} else {
if MovingActive = false {
MovingActive = true
}
WriteToLog("Moved back or forward.")
MovingDir = argument0
MovingTimer = 0
if argument0 = "retreat" {
MovingChange = argument2
} else {
if (100 - PercentForward) < argument2 {
MovingChange = 100 - PercentForward
} else {
MovingChange = argument2
}
}
MovingSpeed = argument1
MoveCalc = false
}
}
}
}

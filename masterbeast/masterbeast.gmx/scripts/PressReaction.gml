///PressReaction

if mDriveCollectionMaster.RealReactionsOn = true {

if position_meeting(mouse_x,mouse_y,oNose1) = false {




with mInterfaceController {

if IsAlive() and AmountForward(60) {
if IsAsleep() {
if PressTimer > 400 {
ChanceToWake(0.0001 * mInterfaceController.PressTimer)
}
} else {
if Healing = true or Cleaning = true {
ChangeEmotionStep("happy","up",0.0001)
ChangeEmotionStep("anger","down",0.0001)
ChangeEmotionStep("shame","down",0.0001)
ChangeEmotionStep("fear","down",0.0001)
with mCreatureController {
BaseLust += 0.0001
CloseToAnne -= 0.0001
BaseSubIntent -= 0.000001
BaseTrust += 0.0001
BaseResistance -= 0.0001
}
TwitchIfNearBP(mouse_x,mouse_y,400)
RandomTwitch()
}


if PressTimer > 500 {
if IsInRitual() {
if ChanceToRitualReact() / 100 {TwitchIfNearBP(mouse_x,mouse_y,200)}
mCreatureController.BaseTiredness+=0.001  * mPlotController.ISModifier
if PressTimer > 200 {
mCreatureController.BasePain+=0.001 * mInterfaceController.PressTimer
}
mCreatureController.CloseToAnne+=0.001 * mInterfaceController.PressTimer
mCreatureController.BaseLust+=0.0001 * mInterfaceController.PressTimer
} else {
if mCreatureController.Triad < 0 {
if Chance(0.00001 * mInterfaceController.PressTimer) {
RandomShake()
}
}
VocaliseChance(0.00001 * mInterfaceController.PressTimer)
if Chance(0.00001 * mInterfaceController.PressTimer) {
TwitchIfNearBP(mouse_x,mouse_y,200)
}
if mCreatureController.Triad < 0 {
if Chance(0.00001 * mInterfaceController.PressTimer) {
Dir = random(360)
Len = irandom_range(50,100)
NewX = lengthdir_x(Len,Dir)
NewY = lengthdir_y(Len,Dir)
MoveToXY(NewX,NewY,irandom_range(30,50),mInterfaceController.CurrentView,10)
}
}
mDriveCollectionMaster.BaseBreathRate += 0.00001
with mCreatureController {
BaseResistance+=0.000001 * mPlotController.ISModifier
BaseStress+=0.000001 * mPlotController.ISModifier
CloseToAnne-=0.000001 * mPlotController.ISModifier
BaseStress+=0.000001 * mPlotController.ISModifier
BasePain+=0.000001 * mPlotController.ISModifier
BaseLust+=0.000001 * mPlotController.ISModifier
BaseTrust-=0.000001 * mPlotController.ISModifier

}
ChangeEmotionStep("happy","down",0.000001)
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",0.000001)
}
if mCreatureController.Triad < 0 {
ChangeEmotionStep("fear","up",0.000001)
}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("shame","up",0.000001)
}






}

}
}
}
}
}
}

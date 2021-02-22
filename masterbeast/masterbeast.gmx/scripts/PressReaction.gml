///PressReaction

if DrivesAreOn() {

with mInterfaceController {

if IsAlive() and AmountForward(60) {
if IsAsleep() {
if PressTimer > 100 {
ChanceToWake(0.0001 * mInterfaceController.PressTimer)
}
} else {
if PressTimer > 100 {
if IsInRitual() {
ChanceToRitualReact(TwitchIfNearBP(mouse_x,mouse_y,200))
mCreatureController.BaseTiredness+=0.001
if PressTimer > 200 {
mCreatureController.BasePain+=0.001 * mInterfaceController.PressTimer
}
mCreatureController.CloseToAnne+=0.001 * mInterfaceController.PressTimer
mCreatureController.BaseLust+=0.0001 * mInterfaceController.PressTimer
} else {
ShiverChance(0.0001 * mInterfaceController.PressTimer)
if mCreatureController.Triad < 0 {
if Chance(0.0001 * mInterfaceController.PressTimer) {
RandomShake()
}
}
VocaliseChance(0.0001 * mInterfaceController.PressTimer)
if Chance(0.0001 * mInterfaceController.PressTimer) {
TwitchIfNearBP(mouse_x,mouse_y,200)
}
if mCreatureController.Triad < 0 {
if Chance(0.001 * mInterfaceController.PressTimer) {
Dir = random(360)
Len = irandom_range(50,100)
NewX = lengthdir_x(Len,Dir)
NewY = lengthdir_y(Len,Dir)
MoveToXY(NewX,NewY,irandom_range(30,50),mInterfaceController.CurrentView,10)
}
}
mDriveCollectionMaster.BaseBreathRate += 0.0001 * mInterfaceController.PressTimer
with mCreatureController {
BaseResistance+=0.001
BaseStress+=0.001
CloseToAnne-=0.001
BaseStress+=0.001
BasePain+=0.001
BaseLust+=0.001
BaseTrust-=0.001
BaseSubIntent-=0.001
}
ChangeEmotionStep("happy","down",0.001)
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",0.001)
}
if mCreatureController.Triad < 0 {
ChangeEmotionStep("fear","up",0.001)
}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("shame","up",0.001)
}






}

}
}
}
}
}

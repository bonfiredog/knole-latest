///MoveCellarReaction()

if mDriveCollectionMaster.RealReactionsOn = true {
if AmountForward(80) and IsAlive() {
TwitchRun(3)
ChanceToWake(3)
mCreatureController.BaseResistance -= 0.1 * mDriveCollectionMaster.ISModifier
mCreatureController.BasePain += 0.1 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.005
if Chance(2 * ReactChance()) {
HoldBreathFor(irandom_range(30,100))
}
if Chance(2 * ReactChance()) {
EyeSquint(irandom_range(0,3),true,irandom_range(50,150))
}
mDriveCollectionMaster.BaseBreathRate += 0.000002

if IsInRitual() {
ChangeEmotionStep("happy","up",0.2)
mCreatureController.BaseLust += 0.2  * mPlotController.ISModifier
if Chance(2 * ReactChance()) {
MoveBackForward("comefoward",10,20)
}
if Chance(2 * ReactChance()) {
MoveToXY(mouse_x,mouse_y,10,mInterfaceController.CurrentView,10)
}
} else {
mCreatureController.BaseStress += 0.2 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 0.2  * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.2 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.02 * mPlotController.ISModifier
ChangeEmotionStep("happy","down",0.2)
mCreatureController.BaseLust += 0.2  * mPlotController.ISModifier
ChangeEmotionStep("shame","up",0.2)
ChangeEmotionStep("sad","up",0.2)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.2)
} else {
ChangeEmotionStep("fear","up",0.2)
}
if Chance(2 * ReactChance()) {
RandomShake()
}
if Chance(0.3 * ReactChance()) {
MoveBackForwardUnCapped("retreat",10,irandom_range(10,20))
}
if Chance(0.6 * ReactChance()) {
VocaliseChance(100)
}

}
}
}

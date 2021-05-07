///GrabBPReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if mInterfaceController.GrabbingBodyPart = true
and IsAlive() and AmountForward(60) {
if Chance(0.2) {
TwitchIfNearBP(mouse_x,mouse_y,150)
}
mDriveCollectionMaster.BaseBreathRate += 0.000001

mCreatureController.BasePain += 0.03 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseStress += 0.03 * mDriveCollectionMaster.ISModifier

if IsInRitual() = false
{
if IsAsleep() = false {
if Chance((0.3 / 100) * mCreatureController.Resistance) {
choose(
LittleJump(),
EyeSquint(irandom_range(2,4),true,irandom_range(30,90)),
TwitchRun(irandom_range(10,25)),
ShiftAway(mouse_x,mouse_y,irandom_range(50,100),random(360))
)
}

if Chance((0.03 / 100) * mCreatureController.Resistance) {
MoveBackForward("retreat",MoveSpeedCalc(),irandom_range(3,7))
}

with mCreatureController {
CloseToAnne -= 0.03 * mPlotController.ISModifier
BaseSubIntent -= 0.01 * mPlotController.ISModifier
BaseResistance += 0.03 * mPlotController.ISModifier
}

ChangeEmotionStep("happy","down",0.03)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("shame","up",0.03)
ChangeEmotionStep("sad","up",0.03)
}

if mCreatureController.BaseResistance > 30 {
ChangeEmotionStep("anger","up",0.03)
if Chance(1 * ReactChance()) {
RandomShake()
}
} else {
ChangeEmotionStep("fear","up",0.03)
if Chance(1 * ReactChance()) {
RandomShake()
}
}
}

} else {
mCreatureController.CloseToAnne += 0.3  * mPlotController.ISModifier
ChangeEmotionStep("happy","up",0.3)
if ChanceToRitualReact() / 100 {
choose(
TwitchRun(irandom_range(10,25)),
EyeSquint(irandom_range(2,4),true,irandom_range(25,120)),
)
}

}
}
}

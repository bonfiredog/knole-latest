///GrabBPReactions()

if DrivesAreOn() {
if mInterfaceController.GrabbingBodyPart = true
and IsAlive() and AmountForward(60) {
if Chance(0.2) {
TwitchIfNearBP(mouse_x,mouse_y,150)
}
mDriveCollectionMaster.BaseBreathRate += 0.0001
ChanceToWake(0.02)

mCreatureController.BasePain += 0.03
mCreatureController.BaseStress += 0.03

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
MoveBackForward("retreat",15,irandom_range(3,7))
}

with mCreatureController {
CloseToAnne -= 0.05
BaseSubIntent -= 0.001
BaseResistance += 0.05
}

ChangeEmotionStep("happy","down",0.05)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("shame","up",0.05)
ChangeEmotionStep("sad","up",0.05)
}

if mCreatureController.BaseResistance > 30 {
ChangeEmotionStep("anger","up",0.05)
if Chance(0.3) {
RandomShake()
}
} else {
ChangeEmotionStep("fear","up",0.05)
if Chance(0.3) {
RandomShake()
}
}
}

} else {
mCreatureController.CloseToAnne += 0.03
ChangeEmotionStep("happy","up",0.001)
if ChanceToRitualReact() {
choose(
TwitchRun(irandom_range(10,25)),
EyeSquint(irandom_range(2,4),true,irandom_range(25,120)),
MoveToXY(mouse_x,mouse_y,20,mInterfaceController.CurrentView,10)
)
}

}
}
}

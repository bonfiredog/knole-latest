///MoveCellarReaction()

if DrivesAreOn() {
if AmountForward(80) and IsAlive() {
TwitchRun(3)
ChanceToWake(3)
mCreatureController.BaseResistance -= 0.2
mCreatureController.BasePain += 0.2
mCreatureController.BaseAlive -= 0.02
if Chance(0.2) {
HoldBreathFor(irandom_range(30,100))
}
if Chance(0.2) {
EyeSquint(irandom_range(0,3),true,irandom_range(50,150))
}
mDriveCollectionMaster.BaseBreathRate += 0.002

if IsInRitual() {
mCreatureController.BaseTrust += 0.2
mCreatureController.BaseSubIntent += 0.002
ChangeEmotionStep("happy","up",0.2)
mCreatureController.BaseLust += 0.2
if Chance(0.2) {
MoveBackForward("comefoward",10,20)
}
if Chance(0.2) {
MoveToXY(mFinger.x,mFinger.y,10,mInterfaceController.CurrentView,10)
}
} else {
mCreatureController.BaseStress += 0.2
mCreatureController.CloseToAnne -= 0.2 
mCreatureController.BaseTrust -= 0.2 
mCreatureController.BaseSubIntent -= 0.02
ChangeEmotionStep("happy","down",0.2)
mCreatureController.BaseLust += 0.2
ChangeEmotionStep("shame","up",0.2)
ChangeEmotionStep("sad","up",0.2)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.2)
} else {
ChangeEmotionStep("fear","up",0.2)
}
if Chance(0.2) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
if Chance(0.2) {
RandomShake()
}
if Chance(0.2) {
MoveBackForwardUnCapped("retreat",10,irandom_range(10,20))
}
if Chance(0.2) {
VocaliseChance(100)
}

}
}
}

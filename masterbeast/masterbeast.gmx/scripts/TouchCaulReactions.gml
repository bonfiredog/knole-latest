///TouchCaulReactions()

if DrivesAreOn() {

ChanceToWake(10)
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
LittleJump()
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
StartSwallowBehaviour(10,30)
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
StartOpenMouthBehaviour(0.2,irandom_range(50,100))
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
ShakeCaul(irandom_range(5,10),irandom_range(30,70))
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
StartCaulVibrateBehaviour(irandom_range(30,70))
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
TwitchRun(ConsentAndPartMod(30))
}
mDriveCollectionMaster.BaseBreathRate += ConsentAndPartMod(0.03)

if IsAsleep() = false {
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
EyeSquint(irandom_range(3,5),true,irandom_range(40,60))
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
HoldBreathFor(ConsentAndPartMod(60))
}

if IsInRitual() {
mCreatureController.BaseResistance -= ConsentAndPartMod(3)
mCreatureController.BaseStress += ConsentAndPartMod(3)
mCreatureController.BasePain += ((4 / 100) * BaseLust)
mCreatureController.CloseToAnne += ConsentAndPartMod(3)
mCreatureController.BaseTrust += ConsentAndPartMod(3)
mCreatureController.BaseLust += ConsentAndPartMod(3)

if ChanceToRitualReact() {
ShiverChance(100)
}
if ChanceToRitualReact() {
RandomVoc(0.1)
}
if ChanceToRitualReact() {
NodUpDown(irandom_range(2,3),)
}
ChangeEmotion("happy","up",0.7,ConsentAndPartMod(5))
MoveBackForward("comeforward",irandom_range(5,10),100 - mBehavioursDeliberative.PercentForward)


MoveToXY(mFinger.x,mFinger.y,irandom_range(20,30),mInterfaceController.CurrentView,10)
} else {
if Consented() {
mCreatureController.BaseResistance -= ConsentAndPartMod(3)
mCreatureController.BaseStress += ConsentAndPartMod(3)
mCreatureController.BasePain += ((4 / 100) * BaseLust)
mCreatureController.CloseToAnne += ConsentAndPartMod(3)
mCreatureController.BaseSubIntent += ConsentAndPartMod(0.03)
ChangeEmotion("happy","up",0.6,ConsentAndPartMod(5))
ChangeEmotion("shame","up",0.6,ConsentAndPartMod(5))
mCreatureController.BaseLust += ConsentAndPartMod(3)

if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
RandomVoc(0.1)
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
NodUpDown(irandom_range(2,3),)
}
ShiverChance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity()))
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
MoveToXY(mFinger.x,mFinger.y,irandom_range(20,30),mInterfaceController.CurrentView,10)
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
MoveBackForward("comeforward",irandom_range(5,10),100 - mBehavioursDeliberative.PercentForward)
}
} else {
mCreatureController.BaseResistance -= ConsentAndPartMod(3)
mCreatureController.BaseStress += ConsentAndPartMod(3)
mCreatureController.BasePain += ((4 / 100) * BaseLust)
mCreatureController.CloseToAnne -= ConsentAndPartMod(3)
mCreatureController.BaseTrust -= ConsentAndPartMod(3)
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(5,20))
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity()))  {
ShiftAway(mFinger.x,mFinger.y,irandom_range(50,200),random(360))
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity()))  {
RandomShake()
}
if Chance(10 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
RandomVoc(0.8)
}
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.6,ConsentAndPartMod(5))
ChangeEmotion("sad","up",0.6,ConsentAndPartMod(5))
}
mCreatureController.BaseSubIntent -= ConsentAndPartMod(0.03)
if Resistance > 40 {
ChangeEmotion("anger","up",0.6,ConsentAndPartMod(5))
} else {
ChangeEmotion("fear","up",0.6,ConsentAndPartMod(5))
}


}
}
}
}
StartTouchingCaul = true


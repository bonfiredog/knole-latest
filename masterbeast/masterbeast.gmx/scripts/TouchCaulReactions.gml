///TouchCaulReactions()


if IsAlive() and AmountForward(80)
if position_meeting(mouse_x,mouse_y,mCaulParent)
and mouse_check_button(mb_any) and StartTouchingCaul = false {

if mDriveCollectionMaster.RealReactionsOn = true {

ChanceToWake(10 * ReactChance())
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
LittleJump()
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
StartSwallowBehaviour(10,30)
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
StartOpenMouthBehaviour(0.2,irandom_range(50,100))
}
if Chance(30 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
ShakeCaul(irandom_range(5,10),irandom_range(30,70))
}
if Chance(30 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
StartCaulVibrateBehaviour(irandom_range(30,70))
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
TwitchRun(ConsentAndPartMod(30))
}
mDriveCollectionMaster.BaseBreathRate += ConsentAndPartMod(0.001)

if IsAsleep() = false {
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
EyeSquint(irandom_range(3,5),true,irandom_range(40,60))
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
HoldBreathFor(ConsentAndPartMod(60))
}

if IsInRitual() {
mCreatureController.BaseResistance -= ConsentAndPartMod(5)
mCreatureController.BaseStress += ConsentAndPartMod(5)
mCreatureController.BasePain += ((5 / 100) * mCreatureController.BaseLust)
mCreatureController.CloseToAnne += ConsentAndPartMod(5)
mCreatureController.BaseTrust += ConsentAndPartMod(5)
mCreatureController.BaseLust += ConsentAndPartMod(5)

if ChanceToRitualReact() * ReactChance() {
ShiverChance(100)
}
if ChanceToRitualReact() * ReactChance() {
RandomVoc(0.1)
}

if ChanceToRitualReact() * ReactChance() {
NodUpDown(irandom_range(2,3),)
}
ChangeEmotion("happy","up",0.7,ConsentAndPartMod(5))
MoveBackForward("comeforward",irandom_range(5,10),100 - mBehavioursDeliberative.PercentForward)
MoveToXY(mouse_x,mouse_y,irandom_range(20,30),mInterfaceController.CurrentView,10)
} else {
if Consented() {
mCreatureController.BaseResistance -= ConsentAndPartMod(5) * mPlotController.ISModifier
mCreatureController.BaseStress += ConsentAndPartMod(5) * mPlotController.ISModifier
mCreatureController.BasePain += ((5 / 100) * mCreatureController.BaseLust)
mCreatureController.CloseToAnne += ConsentAndPartMod(5) * mPlotController.ISModifier
mCreatureController.BaseSubIntent += ConsentAndPartMod(0.06) * mPlotController.ISModifier
ChangeEmotion("happy","up",0.6,ConsentAndPartMod(5)) 
ChangeEmotion("shame","up",0.6,ConsentAndPartMod(5))
mCreatureController.BaseLust += ConsentAndPartMod(5) * mPlotController.ISModifier

if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
RandomVoc(0.1)
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
NodUpDown(irandom_range(2,3),)
}
ShiverChance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity()))
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
MoveToXY(mouse_x,mouse_y,irandom_range(20,30),mInterfaceController.CurrentView,10)
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
MoveBackForward("comeforward",irandom_range(5,10),100 - mBehavioursDeliberative.PercentForward)
}
} else {
if mInterfaceController.Healing = false {
mCreatureController.BaseResistance -= ConsentAndPartMod(5)
mCreatureController.BaseStress += ConsentAndPartMod(5)
mCreatureController.BasePain += ((5 / 100) * mCreatureController.BaseLust)
mCreatureController.CloseToAnne -= ConsentAndPartMod(5)
mCreatureController.BaseTrust -= ConsentAndPartMod(5)
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(5,20))
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity()))  {
ShiftAway(mouse_x,mouse_y,irandom_range(50,200),random(360))
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity()))  {
RandomShake()
}
if Chance(20 + ((30 / 100) * ConsentIntensity()) + ((30 / 100) * PartSensitivity())) {
RandomVoc(0.8)
}

if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.6,ConsentAndPartMod(5))
ChangeEmotion("sad","up",0.6,ConsentAndPartMod(5))
}
mCreatureController.BaseSubIntent -= ConsentAndPartMod(0.03)
if mCreatureController.Resistance > 40 {
ChangeEmotion("anger","up",0.6,ConsentAndPartMod(5))
} else {
ChangeEmotion("fear","up",0.6,ConsentAndPartMod(5))
}
}
}
}
}
}
if Chance(30 * ReactChance()) {WinkRun(2)}
mDriveCollectionMaster.alarm[1] = 60
StartTouchingCaul = true
}



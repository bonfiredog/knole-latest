///RubCaulReaction

if DrivesAreOn() {

if instance_exists(mFinger) and place_meeting(mFinger.x,mFinger.y,mCaulParent)
and mDriveCollectionMaster.StartTouchingCaul = true
and mInterfaceController.DragBegun = true 
and AmountForward(70)
and IsAlive()
{

mDriveCollectionMaster.RubCaulIntensity += 0.02
ChanceToWake(0.2 + ((0.2 / 100) * mDriveCollectionMaster.RubCaulIntensity))

//In Ritual
if IsInRitual() {
if ChanceToRitualReact() / 100 {
TwitchRun(irandom_range(10,20))
}
BreathRate += 0.003 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity)
ShiverChance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03))
VocaliseChance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03))
if ChanceToRitualReact() / 100 {
ShakeCaul(30 + ConsentAndPartMod(20),irandom_range(20,30))
}
if ChanceToRitualReact() / 100 {
oCaulJug.ShotMod += irandom_range(20,30) + ((30 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)
}
if Chance(0.03) {
MoveToXY(mFinger.x,mFinger.y,20,mInterfaceController.CurrentView,10)
}
if ChanceToRitualReact() / 100 {
StartSwallowBehaviour(10,10)
}
if ChanceToRitualReact() / 100 {
EyeSquint(irandom_range(0,3) - round(ConsentAndPartMod(2)),true,irandom_range(40,80))
}

//Out Of Ritual
} else {
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
TwitchRun(irandom_range(10,20))
}
BreathRate += 0.003 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity)
ShiverChance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03))

if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)){
ShakeCaul(30 + ConsentAndPartMod(20),irandom_range(20,30))
}
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
oCaulJug.ShotMod += irandom_range(20,30) + ((30 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)
}
if Chance(0.03) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,300) + ConsentAndPartMod(100),200)
}
if (0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
StartSwallowBehaviour(10,10)
}
}

//General
if IsAsleep() = false {

if IsInRitual = true {
mCreatureController.BaseResistance -= 0.05
mCreatureController.BaseStress -= 0.05
mCreatureController.BasePain += 0.05 + NumberISMod(Lust,0.03)
mCreatureController.CloseToAnne += 0.05
mCreatureController.BaseTrust += 0.05
ChangeEmotionStep("happy","up",0.07)
ChangeEmotionStep("anger","down",0.07)
ChangeEmotionStep("fear","down",0.01)
if ChanceToRitualReact() / 100 {
NodUpDown(irandom_range(1,3) + round(ConsentAndPartMod(4)),irandom_range(0.8,1.4) + ConsentAndPartMod(1))
}
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",irandom_range(10,20) - ConsentAndPartMod(8),100 - mBehavioursDeliberative.PercentForward)
}


} else {
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
EyeSquint(irandom_range(0,3) - round(ConsentAndPartMod(2)),true,irandom_range(40,80))
}
VocaliseChance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03))
}
if Consented() {
mCreatureController.BaseResistance -= 0.05
mCreatureController.BaseStress -= 0.05
mCreatureController.BasePain += 0.05 + NumberISMod(Lust,0.03)
mCreatureController.CloseToAnne -= 0.05
mCreatureController.BaseTrust += 0.05
mCreatureController.BaseSubIntent += 0.003
ChangeEmotionStep("happy","up",0.07)
ChangeEmotionStep("anger","down",0.07)
ChangeEmotionStep("fear","up",0.01)
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
NodUpDown(irandom_range(1,3) + round(ConsentAndPartMod(4)),)
}
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
MoveToXY(mFinger.x,mFinger.y,5 + ConsentAndPartMod(20),mInterfaceController.CurrentView,50)
}
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",irandom_range(10,20) - ConsentAndPartMod(8),100 - mBehavioursDeliberative.PercentForward)
}

} else {
mCreatureController.BaseResistance -= 0.05
mCreatureController.BaseStress += 0.05
mCreatureController.BasePain += 0.05 + NumberISMod(Lust,0.03)
mCreatureController.CloseToAnne -= 0.05
mCreatureController.BaseTrust -= 0.05
mCreatureController.BaseSubIntent -= 0.003
ChangeEmotionStep("happy","down",0.07)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.07)
ChangeEmotionStep("shame","up",0.07)
} else {
ChangeEmotionStep("fear","up",0.01)
}
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(50,200),random(360))
}
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
MoveBackForwardUnCapped("retreat",irandom_range(5,20),irandom_range(10,30))
} 
if Chance(0.03 + ((0.03 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.03)) {
RandomShake()
}
}
}

} else {
if mDriveCollectionMaster.RubCaulIntensity > 0 {
mDriveCollectionMaster.RubCaulIntensity -= 1
}
mDriveCollectionMaster.RubCaulIntensity = clamp(mDriveCollectionMaster.RubCaulIntensity,0,100)
}
}


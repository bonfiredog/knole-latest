///RubCaulReaction

if mDriveCollectionMaster.RealReactionsOn = true {

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
mDriveCollectionMaster.BaseBreathRate += 0.00003 + ((0.00002 / 100) * mDriveCollectionMaster.RubCaulIntensity)
ShiverChance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02))
VocaliseChance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02))
if ChanceToRitualReact() / 100 {
ShakeCaul(30 + ConsentAndPartMod(20),irandom_range(20,30))
}
if ChanceToRitualReact() / 100 {
oCaulJug.ShotMod += irandom_range(20,30) + ((30 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)
}
if Chance(0.02 * ReactChance()) {
MoveToXY(mouse_x,mouse_y,20,mInterfaceController.CurrentView,10)
}
if ChanceToRitualReact() / 100 {
StartSwallowBehaviour(10,10)
}
if ChanceToRitualReact() / 100 {
EyeSquint(irandom_range(0,3) - round(ConsentAndPartMod(2)),true,irandom_range(40,80))
}

//Out Of Ritual
} else {
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
TwitchRun(irandom_range(10,20))
}
mDriveCollectionMaster.BaseBreathRate += 0.0003 + ((0.002 / 100) * mDriveCollectionMaster.RubCaulIntensity)
ShiverChance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02))

if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)){
ShakeCaul(30 + ConsentAndPartMod(20),irandom_range(20,30))
}
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
oCaulJug.ShotMod += irandom_range(20,30) + ((30 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)
}
if Chance(0.02) and mInterfaceController.Healing = false {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,300) + ConsentAndPartMod(100),200)
}
if (0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
StartSwallowBehaviour(10,10)
}
}

//General
if IsAsleep() = false {

if IsInRitual = true {
mCreatureController.BaseResistance -= 0.02 * mPlotController.ISModifier
mCreatureController.BaseStress -= 0.02 * mPlotController.ISModifier
mCreatureController.BasePain += 0.02 + NumberISMod(mCreatureController.Lust,0.02)
mCreatureController.CloseToAnne += 0.02 * mPlotController.ISModifier
mCreatureController.BaseTrust += 0.02 * mPlotController.ISModifier
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
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
EyeSquint(irandom_range(0,3) - round(ConsentAndPartMod(2)),true,irandom_range(40,80))
}
VocaliseChance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02))
}
if Consented() {
mCreatureController.BaseResistance -= 0.02 * mPlotController.ISModifier
mCreatureController.BaseStress -= 0.02 * mPlotController.ISModifier
mCreatureController.BasePain += 0.02 + NumberISMod(mCreatureController.Lust,0.02)
mCreatureController.CloseToAnne -= 0.02 * mPlotController.ISModifier
mCreatureController.BaseTrust += 0.02 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.003 * mPlotController.ISModifier
ChangeEmotionStep("happy","up",0.07)
ChangeEmotionStep("anger","down",0.07)
ChangeEmotionStep("fear","up",0.01)
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
NodUpDown(irandom_range(1,3) + round(ConsentAndPartMod(4)),)
}
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
MoveToXY(mouse_x,mouse_y,5 + ConsentAndPartMod(20),mInterfaceController.CurrentView,50)
}
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",irandom_range(10,20) - ConsentAndPartMod(8),100 - mBehavioursDeliberative.PercentForward)
}

} else {
if mInterfaceController.Healing = false {
mCreatureController.BaseResistance -= 0.02 * mPlotController.ISModifier
mCreatureController.BaseStress += 0.02 * mPlotController.ISModifier
mCreatureController.BasePain += 0.02 + NumberISMod(mCreatureController.Lust,0.02)
mCreatureController.CloseToAnne -= 0.02 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.02 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.003 * mPlotController.ISModifier
ChangeEmotionStep("happy","down",0.07)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.07)
ChangeEmotionStep("shame","up",0.07)
} else {
ChangeEmotionStep("fear","up",0.01)
}
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(50,200),random(360))
}
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
MoveBackForwardUnCapped("retreat",irandom_range(5,20),irandom_range(10,30))
} 
if Chance(0.02 + ((0.02 / 100) * mDriveCollectionMaster.RubCaulIntensity) + ConsentAndPartMod(0.02)) {
RandomShake()
}
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


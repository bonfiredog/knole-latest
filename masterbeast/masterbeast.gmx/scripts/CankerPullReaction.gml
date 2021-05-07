///CankerPullReaction

if mDriveCollectionMaster.RealReactionsOn = true {

if mCreatureController.Alive > 0 {
if mWorldController.CurrentTOD = "morning" or mWorldController.CurrentTOD = "afternoon" {
ChangeEmotionStep("shame","up",1)
}
ChanceToWake(0.5)
if AmountForward(100) = false {MoveBackForward("comeforward",10,100 - mBehavioursDeliberative.PercentForward)}
oCaulLip.Redness += 0.02
mCreatureController.BasePain += 0.5 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseStress += 0.5 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseLust += 0.5 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.05 * mDriveCollectionMaster.ISModifier
mDriveCollectionMaster.BaseBreathRate += 0.000001
oCaulJug.ShotMod += 0.06

if mBehavioursReactive.Sleeping = false {
if IsInRitual() {mCreatureController.CloseToAnne += 0.01} else {mCreatureController.CloseToAnne -= 0.01}
mCreatureController.BaseResistance -= 0.5  * mPlotController.ISModifier
mCreatureController.BaseTiredness += 0.05  * mPlotController.ISModifier
if Chance(5 * ReactChance()){EyeSquint(irandom_range(1,3),true,irandom_range(50,80))}
if Chance(5 * ReactChance()){StartScreenShake(irandom_range(10,20),irandom_range(0.2,0.3),irandom_range(5,10))}
if Chance(5 * ReactChance()){ShakeCaul(irandom_range(10,20),irandom_range(5,10))
if mBehavioursReactive.CaulVibrateActive = false {
StartCaulVibrateBehaviour(90)
}}
if Chance(5 * ReactChance()){TwitchRun(irandom_range(5,20))}
if mDriveCollectionMaster.InRitual = true {
ChangeEmotionStep("happy","up",0.5)
ChangeEmotionStep("fear","up",0.5)
ChangeEmotionStep("anger","down",0.5)
} else {
VocaliseChance(4 + ((4 / 100) * mCreatureController.Pain))
if mCreatureController.CankerPullTimer <= 0 {
ChangeEmotion("surprise","up",0.7,20 * (mCreatureController.Triad))
LittleJump()
ShakeCaul(irandom_range(10,20),irandom_range(5,10))
mCreatureController.CankerPullTimer = irandom_range(2000,4000)
}
mCreatureController.BaseSubIntent -= 0.03 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.5 * mPlotController.ISModifier

if mCreatureController.Triad > 0 {
mCreatureController.BaseResistance += 0.5
ChangeEmotionStep("fear","up",0.5)
ChangeEmotionStep("anger","up",0.5)
} else {
mCreatureController.BaseResistance -= 0.5
ChangeEmotionStep("fear","up",0.5)
ChangeEmotionStep("shame","up",0.5)
}
ChangeEmotionStep("happy","down",0.5)
}
}
}
}

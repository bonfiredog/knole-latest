///CankerPullReaction

if DrivesAreOn() {

if mCreatureController.Alive > 0 {
if mWorldController.CurrentTOD = "morning" or mWorldController.CurrentTOD = "afternoon" {
ChangeEmotionStep("shame","up",0.3)
}
ChanceToWake(0.5)
if AmountForward(100) = false {MoveBackForward("comeforward",10,100 - mBehavioursDeliberative.PercentForward)}
oCaulLip.Redness += 0.01
mCreatureController.BasePain += 0.4
mCreatureController.BaseStress += 0.2
mCreatureController.BaseLust += 0.2
mCreatureController.BaseAlive -= 0.03
mDriveCollectionMaster.BaseBreathRate += 0.001
oCaulJug.ShotMod += 0.06

if mBehavioursReactive.Sleeping = false {
if IsInRitual() {mCreatureController.CloseToAnne += 0.01} else {mCreatureController.CloseToAnne -= 0.01}
mCreatureController.BaseResistance -= 0.1
mCreatureController.BaseTiredness += 0.05
if Chance(0.2){EyeSquint(irandom_range(1,3),true,irandom_range(50,80))}
if Chance(0.2){StartScreenShake(irandom_range(10,20),irandom_range(0.2,0.3),irandom_range(5,10))}
if Chance(0.2){ShakeCaul(irandom_range(10,20),irandom_range(5,10))
if mBehavioursReactive.CaulVibrateActive = false {
StartCaulVibrateBehaviour(90)
}}
if Chance(0.2){TwitchRun(irandom_range(5,20))}
if mDriveCollectionMaster.InRitual = true {
ChangeEmotionStep("happy","up",0.1)
ChangeEmotionStep("fear","up",0.1)
ChangeEmotionStep("anger","down",0.1)
} else {
VocaliseChance(0.2 + ((0.2 / 100) * mCreatureController.Pain))
if mCreatureController.CankerPullTimer <= 0 {
ChangeEmotion("surprise","up",0.7,20 * (mCreatureController.Triad))
LittleJump()
ShakeCaul(irandom_range(10,20),irandom_range(5,10))
mCreatureController.CankerPullTimer = irandom_range(2000,4000)
}
mCreatureController.BaseSubIntent -= 0.001
mCreatureController.BaseTrust -= 0.02

if mCreatureController.Triad > 0 {
mCreatureController.BaseResistance += 0.03
ChangeEmotionStep("fear","up",0.1)
ChangeEmotionStep("anger","up",0.1)
} else {
mCreatureController.BaseResistance -= 0.03
ChangeEmotionStep("fear","up",0.2)
ChangeEmotionStep("shame","up",0.2)
}
ChangeEmotionStep("happy","down",0.1)
}
}
}
}

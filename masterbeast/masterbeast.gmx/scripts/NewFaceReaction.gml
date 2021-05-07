///NewFaceReaction()

if mDriveCollectionMaster.RealReactionsOn = true {
if IsInRitual() {
if Chance(60) {StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(50) {HoldBreathFor(irandom_range(20,30))}
ChangeEmotion("surprise","up",0.3,25)
if Chance(70){LittleJump()}
ChangeEmotion("happy","up",0.3,15)
ChangeEmotion("anger","down",0.3,15)
mCreatureController.BaseLust += 7  * mPlotController.ISModifier
MoveBackForward("comeforward",irandom_range(40,65) + ((30 / 100) * (100 - mCreatureController.Alive)),100 - mBehavioursDeliberative.PercentForward)
RandomTwitch()
} else {
ChangeEmotion("surprise","up",0.3,25)
if Chance(70){LittleJump()}
if Chance(70) {EyeSquint(irandom_range(2,5),true,irandom_range(15,30))}
if Chance(70) {StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(50) {HoldBreathFor(irandom_range(20,30))}
EmotionRequest()
if mCreatureController.Triad >= 0 {
if Chance(40) {WinkRun(irandom_range(2,6))}
mCreatureController.BaseResistance -= 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseLust += 10 * mDriveCollectionMaster.ISModifier
if Chance(mCreatureController.Triad * 100) {MoveBackForward("comeforward",irandom_range(40,65) + ((30 / 100) * (100 - mCreatureController.Alive)),100 - mBehavioursDeliberative.PercentForward)}
ChangeEmotion("happy","up",0.1,10)
ChangeEmotion("anger","down",0.1,10)
} else {
ChangeEmotion("happy","down",0.1,10)
ChangeEmotion("anger","up",0.1,10)
ChangeEmotion("shame","up",0.1,10)
ChangeEmotion("fear","up",0.1,10)
mCreatureController.BaseStress += 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseResistance += 10 * mDriveCollectionMaster.ISModifier
RandomTwitch()
mDriveCollectionMaster.BaseBreathRate += 0.0005
if Chance(30 * ReactChance()) {RandomVoc(0.2)}
if Chance(mCreatureController.Triad * 100) {MoveBackForward("retreat",irandom_range(10,20) + ((10 / 100) * (100 - mCreatureController.Alive)),irandom_range(5,20))}
}
}
mDriveCollectionMaster.alarm[1] = 60
}

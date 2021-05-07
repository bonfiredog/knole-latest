///CankerCutRipReactions()

if mDriveCollectionMaster.RealReactionsOn = true {

if mCreatureController.Alive > 0 {
oCaulJug.ShotMod += 20
ReduceTabooLayerHealth(0.5)
if Chance(40) {WinkRun(irandom_range(2,6))}
mDriveCollectionMaster.BaseBreathRate += 0.05
mCreatureController.BaseLust -= 25 * mDriveCollectionMaster.ISModifier
mCreatureController.BasePain += 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseStress += 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseResistance -= 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.2 * mDriveCollectionMaster.ISModifier
LittleJump()
if Chance(60 * ReactChance()){StartNumberSniffsBehaviour(1)}
oCaulJug.CankerGrowRateCurrent -= 10000

if mDriveCollectionMaster.CankerCutTimer <= 0 {
TwitchRun(irandom_range(25,40))
if mDriveCollectionMaster.InRitual = false{ChangeEmotion("surprise","up",2,40)}
HoldBreathFor(irandom_range(20,30))
mDriveCollectionMaster.CankerCutTimer = irandom_range(1000,2000) + ((1000 / 100) * (100 - mCreatureController.Alive))
}
ChanceToWake(80 * ReactChance())
TwitchRun(irandom_range(3,10))
if Chance(70 * ReactChance()){EyeSquint(irandom_range(1,2),true,irandom_range(50,70))}
ShakeCaul(1,50)
StartCaulVibrateBehaviour(irandom_range(40,80))
if mBehavioursReactive.Sleeping = false {
if mDriveCollectionMaster.InRitual = true {
ChangeEmotion("happy","up",0.3,20)
mCreatureController.CloseToAnne += 4 * mPlotController.ISModifier
mCreatureController.BaseTrust += 8 * mPlotController.ISModifier
} else {
EmotionRequest()
Len = irandom_range(50,200)
Dir = random(360)
MoveToXY(mouse_x + lengthdir_x(Len,Dir),mouse_y + lengthdir_y(Len,Dir),10,mInterfaceController.CurrentView,30)
VocaliseChance(55)
if Chance(30 * ReactChance()) {
MoveBackForward("retreat",20,irandom_range(10,30))
}
ChangeEmotion("shame","up",0.05,10 + ((10 * mCreatureController.Triad)))
if Chance(60 * ReactChance()){StartScreenShake(irandom_range(25,50),irandom_range(0.6,0.8),irandom_range(3,7))}
ChangeEmotion("fear","up",0.3,20 - ((15 * mCreatureController.Triad)))
ChangeEmotion("happy","down",0.3,10)
ChangeEmotion("anger","up",0.3,20 + (15 * mCreatureController.Triad))
mCreatureController.CloseToAnne -= 4 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 20 * mPlotController.ISModifier
}
}
mDriveCollectionMaster.alarm[1] = 60
}
}















///CankerCutRipReactions()

if DrivesAreOn() {

if mCreatureController.Alive > 0 {
oCaulLip.ShotMod += 20
mDriveCollectionMaster.BaseBreathRate += 0.2
mCreatureController.BaseLust -= 25
mCreatureController.BasePain += 10
mCreatureController.BaseStress += 10
mCreatureController.BaseResistance -= 10
mCreatureController.BaseAlive -= 0.06
LittleJump()
if Chance(60){StartNumberSniffsBehaviour(1)}
oCaulJug.CankerGrowRateCurrent -= 10000

if mDriveCollectionMaster.CankerCutTimer <= 0 {
TwitchRun(irandom_range(25,40))
if mDriveCollectionMaster.InRitual = false{ChangeEmotion("surprise","up",2,40)}
HoldBreathFor(irandom_range(20,30))
mDriveCollectionMaster.CankerCutTimer = irandom_range(1000,2000) + ((1000 / 100) * (100 - mCreatureController.Alive))
}
ChanceToWake(80)
TwitchRun(irandom_range(3,10))
if Chance(70){EyeSquint(irandom_range(1,2),true,irandom_range(50,70))}
ShakeCaul(1,50)
StartCaulVibrateBehaviour(irandom_range(40,80))
if mBehavioursReactive.Sleeping = false {
if mDriveCollectionMaster.InRitual = true {
ChangeEmotion("happy","up",0.3,20)
mCreatureController.CloseToAnne += 4
mCreatureController.BaseTrust += 8
} else {
EmotionRequest()
Len = irandom_range(50,200)
Dir = random(360)
MoveToXY(mouse_x + lengthdir_x(Len,Dir),mouse_y + lengthdir_y(Len,Dir),10,mInterfaceController.CurrentView,30)
VocaliseChance(55)
if Chance(30) {
MoveBackForward("retreat",20,irandom_range(10,30))
}
ChangeEmotion("shame","up",0.05,10 + ((10 * mCreatureController.Triad)))
if Chance(60){StartScreenShake(irandom_range(25,50),irandom_range(0.6,0.8),irandom_range(3,7))}
ChangeEmotion("fear","up",0.3,20 - ((15 * mCreatureController.Triad)))
ChangeEmotion("happy","down",0.3,10)
ChangeEmotion("anger","up",0.3,20 + (15 * mCreatureController.Triad))
ChangeEmotion("shame","up",0.3,20 + (15 * mCreatureController.Triad))
mCreatureController.CloseToAnne -= 4
mCreatureController.BaseTrust -= 20
}
}
}
}















///ThunderSoundReactions

if mDriveCollectionMaster.RealReactionsOn = true {
if mCreatureController.Alive > 20 and Heard() {
ChanceToWake(20)
if Chance(20){
if mInterfaceController.CurrentView = MicroView {
StartZoom(25,500,1000)
}
}
if IsInRitual() = false {
mCreatureController.BaseResistance -= 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseStress += 10 * mDriveCollectionMaster.ISModifier
ChangeEmotion("happy","down",0.2,5)
ChangeEmotion("anger","down",0.2,5)
ChangeEmotion("fear","up",0.2,5)
if Chance(15){MoveBackForward("retreat",20,irandom_range(5,10))}
mDriveCollectionMaster.BaseBreathRate += 0.0003
if Chance(25){StartTwitchNoseSideBehaviour(irandom_range(25,40))}
if Chance(25){StartNumberSniffsBehaviour(irandom_range(1,6))}
if Chance(25){StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour()}
if Chance(20 * ReactChance()){RandomVoc(0.1)}
if Chance(10){RandomShake()}
if Chance(20){HoldBreathFor(20)}
if Chance(20){RandomTwitch()}
}
}
mDriveCollectionMaster.alarm[1] = 60
}

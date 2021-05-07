///ThunderLightReactions()

if mDriveCollectionMaster.RealReactionsOn = true {

if IsAlive() and AmountForward(10) {
ChanceToWake(60)
TwitchRun(irandom_range(2,15))
HoldBreathFor(irandom_range(3,70))
if ChanceToRitualReact(){LittleJump()}
if ChanceToRitualReact(){EyeSquint(irandom_range(0,3),true,15)}
mDriveCollectionMaster.BaseBreathRate += 0.0005

if IsInRitual() = false {
if mDriveCollectionMaster.TLTimer <= 0 {
if mInterfaceController.CurrentView = MicroView {
StartZoom(25,0,1000)
}
ChangeEmotion("surprise","up",3,70)
if Chance(70 * ReactChance()){MoveBackForwardUnCapped("retreat",10,irandom_range(30,60))}
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
if Chance(60 * ReactChance()){RandomShake()}
if Chance(70 * ReactChance()){LittleJump()}
if Chance(50 * ReactChance()){StartOpenMouthBehaviour(0.2,60)}
if IsAsleep() = false and EyesNotClosed() and Seen() {
if Chance(60 * ReactChance()){EyeSquint(irandom_range(0,3),true,15)}
}
mCreatureController.BaseResistance -= 10 * mDriveCollectionMaster.ISModifier
ChangeEmotion("fear","up",0.3,25)
ChangeEmotion("happy","down",0.2,15)
mCreatureController.BaseStress+= 10 * mDriveCollectionMaster.ISModifier
ChangeEmotion("anger","down",0.5,15)
mDriveCollectionMaster.TLTimer = irandom_range(3000,10000)
} else {
HoldBreathFor(irandom_range(3,70))
StopVocalisation()
if Chance(30 * ReactChance()){RandomShake()}
if Chance(30 * ReactChance()){LittleJump()}
if IsAsleep() = false and EyesNotClosed() and Seen() {
if Chance(30 * ReactChance()){EyeSquint(irandom_range(0,3),true,15)}
}
mDriveCollectionMaster.BaseBreathRate += 0.0005
mCreatureController.BaseResistance-= 5 * mDriveCollectionMaster.ISModifier
ChangeEmotion("fear","up",0.3,5) 
ChangeEmotion("happy","down",0.2,5)
mCreatureController.BaseStress+= 5 * mDriveCollectionMaster.ISModifier
ChangeEmotion("anger","down",0.5,5)
}
}
}
mDriveCollectionMaster.alarm[1] = 60
}











///ReactMotion2

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() and IsAsleep() = false and mDriveCollectionMaster.Dozing = false and EyesNotClosed() 
and 
((mInterfaceController.CurrentView = MacroView and  AmountForward(5))
or
(mInterfaceController.CurrentView = MicroView and (PlayerViewOverObject(oEyeballLeft) or PlayerViewOverObject(oEyeballRight)))
)
{

WriteToLog("Seen motion in secondary camera.")

if IsInRitual() {
TwitchRun(irandom_range(5,15))
LittleJump()
if mDriveCollectionMaster.NoInteractionTimer > 2000 {
HoldBreathFor(30)
ChangeEmotion("surprise","up",1,30)
ChangeEmotion("happy","up",0.6,20)
mDriveCollectionMaster.BaseBreathRate += 0.0003
if ChanceToRitualReact() * ReactChance() {StartNumberSniffsBehaviour(irandom_range(2,5))}
NumberOfBlinks(irandom_range(1,5))
if Chance(80) {WinkRun(1)}
if Chance(50) {MoveBackForward("comeforward",20,100 - mBehavioursDeliberative.PercentForward)}
if ChanceToRitualReact() * ReactChance() {
choose(
LittleJump,
TwitchRun(irandom_range(5,20)),
ShiverChance(90)
)
}
}
} else {
RandomTwitch()
if mDriveCollectionMaster.HeardCircleWordsToday = false or mDriveCollectionMaster.HeardPsalmToday = false or mDriveCollectionMaster.AllowedIntoMansion <= 0 {
HoldBreathFor(30)
if Chance(40 * ReactChance()) {StartNumberSniffsBehaviour(irandom_range(2,5))}
ChangeEmotion("surprise","up",1,30)
if Chance(50 * ReactChance()) {StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour() }
mDriveCollectionMaster.BaseBreathRate += 0.0003
NumberOfBlinks(irandom_range(1,5))
if Chance(40 * ReactChance()) { LittleJump() }
VocaliseChance(15)
if Chance(78 - (30 * Triad)) {MoveBackForward("retreat",20,irandom_range(20,30))} 
if Chance(40 * ReactChance()) { StartSwallowBehaviour(25,20)}
ChangeEmotion("fear","up",0.3,20)
if Resistance > 50 { ChangeEmotion("anger","up",0.3,10) }
ChangeEmotion("shame","up",0.3,10)
mCreatureController.BaseStress += 3 * mDriveCollectionMaster.ISModifier
if Chance(35 * ReactChance()) { RandomShake() }

} else {

if mDriveCollectionMaster.NoInteractionTimer > 2000 {
HoldBreathFor(30)
if Chance(40 * ReactChance()) {StartNumberSniffsBehaviour(irandom_range(2,5))}
ChangeEmotion("surprise","up",1,30)
if Chance(50 * ReactChance()) {StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour() }
mDriveCollectionMaster.BaseBreathRate += 0.0003
NumberOfBlinks(irandom_range(1,5))
if Chance(40 * ReactChance()) { LittleJump() }
VocaliseChance(15)
if Chance(80) {WinkRun(1)}
if Chance(40 * ReactChance()) { EyeSquint(3,true,25) }
if Triad < 0 {
if Chance(78 - (30 * Triad)) {MoveBackForward("retreat",20,irandom_range(20,30))} 
if Chance(40 * ReactChance()) { StartSwallowBehaviour(25,20)}
ChangeEmotion("fear","up",0.3,20)
if Resistance > 50 { ChangeEmotion("anger","up",0.3,10) }
ChangeEmotion("shame","up",0.3,10)
mCreatureController.BaseStress += 3 * mDriveCollectionMaster.ISModifier
if Chance(35 * ReactChance()) { RandomShake() }
} else { 
if Chance(78 + (30 * Triad)) {MoveBackForward("comeforward",10 + (20 * Triad),irandom_range(20,30))} 
if Chance(30 + (30 * Triad)) { NodUpDown(irandom_range(1,3))}
ChangeEmotion("happy","up",0.3,10)
mCreatureController.BaseStress -= 3 * mDriveCollectionMaster.ISModifier
mCreatureController.Lust+=2 * mDriveCollectionMaster.ISModifier
}
}
}
}
mDriveCollectionMaster.alarm[1] = 50
MoveSurpriseTimer2 = irandom_range(2000,3000) + ((2000 / 100) * (100 - Alive))
MotionReact2 = true
}
}


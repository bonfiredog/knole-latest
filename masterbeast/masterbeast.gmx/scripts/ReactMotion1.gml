///ReactMotion1()

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() and IsAsleep() = false and mDriveCollectionMaster.Dozing = false and EyesNotClosed() 
and 
((mInterfaceController.CurrentView = MacroView and AmountForward(5))
or
(mInterfaceController.CurrentView = MicroView and (PlayerViewOverObject(oEyeballLeft) or PlayerViewOverObject(oEyeballRight)))
)
{
WriteToLog("Seen motion in main camera.")
if IsInRitual() {
RandomTwitch()
if mDriveCollectionMaster.NoInteractionTimer > 8000 {
HoldBreathFor(30)
ChangeEmotion("surprise","up",1,30)
ChangeEmotion("happy","up",0.6,20)
mDriveCollectionMaster.BaseBreathRate += 0.0003
if ChanceToRitualReact() * ReactChance() {StartNumberSniffsBehaviour(irandom_range(2,5))}
NumberOfBlinks(irandom_range(1,5))
if Chance(50) {MoveBackForward("comeforward",20,100 - mBehavioursDeliberative.PercentForward)}
if Chance(80) {WinkRun(1)}
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

if mDriveCollectionMaster.HeardCircleWordsToday = false or mDriveCollectionMaster.HeardPsalmToday = false or 
mDriveCollectionMaster.NoInteractionTimer > 8000 {
HoldBreathFor(30)
if Chance(40 * ReactChance()) {StartNumberSniffsBehaviour(irandom_range(2,5))}
ChangeEmotion("surprise","up",1,30)
if Chance(50 * ReactChance()) {StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour() }
mDriveCollectionMaster.BaseBreathRate += 0.0003
NumberOfBlinks(irandom_range(1,5))
if Chance(40 * ReactChance()) { LittleJump() }
VocaliseChance(5)
if Chance(80) {WinkRun(1)}
if Chance(40 * ReactChance()) { EyeSquint(3,true,25) }
if Triad < 0 {
if Chance(78 - (30 * Triad)) {MoveBackForward("retreat",20,irandom_range(10,20))} 
if Chance(40 * ReactChance()) {StartSwallowBehaviour(25,20)}
//ChangeEmotion("fear","up",0.3,20)
//if Resistance > 50 { ChangeEmotion("anger","up",0.3,10) }
//ChangeEmotion("shame","up",0.3,10)
mCreatureController.BaseStress += 3 * mDriveCollectionMaster.ISModifier
if Chance(35 * ReactChance()) { RandomShake() }
} else { 
if Chance(78 + (30 * Triad)) {MoveBackForward("comeforward",10 + (20 * Triad),irandom_range(10,20))} 
if Chance(25 + (20 * Triad)) {NodUpDown(irandom_range(1,3))}
ChangeEmotion("happy","up",0.3,10)
mCreatureController.BaseStress -= 3 * mDriveCollectionMaster.ISModifier
mCreatureController.Lust += 2 * mDriveCollectionMaster.ISModifier
}
}
}
mDriveCollectionMaster.alarm[1] = 50
MoveSurpriseTimer1 = irandom_range(2000,3000) + ((2000 / 100) * (100 - Alive))
MotionReact1 = true
}

}




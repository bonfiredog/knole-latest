///BellSoundReaction()

if mDriveCollectionMaster.RealReactionsOn = true {
ChanceToWake(30)

if mCreatureController.Alive > 0 {

if Chance(60){HoldBreathFor(irandom_range(20,50))}

if Chance(40) {WinkRun(irandom_range(2,6))}

//Squint eyes
if mBehavioursReactive.Sleeping = false {
EyeSquint(1,true,irandom_range(15,45))
}

StartScreenShake(irandom_range(20,40),irandom_range(5,10),irandom_range(1,2))
if Chance(70 * ReactChance()){TwitchRun(irandom_range(2,5))}

StartSwallowBehaviour(10,10)
StopYawnBehaviour()

}
}

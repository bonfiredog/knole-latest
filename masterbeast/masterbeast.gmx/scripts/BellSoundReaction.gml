///BellSoundReaction()

if DrivesAreOn() {

if mCreatureController.Alive > 0 {

if Chance(60){HoldBreathFor(irandom_range(20,50))}

//Squint eyes
if mBehavioursReactive.Sleeping = false {
EyeSquint(1,true,irandom_range(15,45))
}

StartScreenShake(irandom_range(20,40),irandom_range(5,10),irandom_range(1,2))
if Chance(70){TwitchRun(irandom_range(2,5))}

StartSwallowBehaviour(10,10)
StopYawnBehaviour()

}
}

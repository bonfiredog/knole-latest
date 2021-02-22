///HearNoiseReactions()

if DrivesAreOn() {
if Alive > 0 {
if HeardSound = true {
if HeardSoundReset = false {

RandomTwitch()
RandomTwitch()
ChanceToWake(0.3)
if mBehavioursReactive.Sleeping = false {

if Triad > 0 or mDriveCollectionMaster.InRitual = false {
if Chance(3){VocaliseChance(100)}
if mInterfaceController.PressBegun and TimeSinceLastMotion > 300 and Faces = 0 and mDriveCollectionMaster.InRitual = false {
ChangeEmotion("surprise","up",0.9,30)
if Chance(60) {LittleJump()}
}
if Chance(5){StartNumberSniffsBehaviour(irandom_range(1,3))}
if Triad < 0 and mDriveCollectionMaster.InRitual = false {
ChangeEmotion("fear","up",0.03,5)
}
if (Triad > 0 or mEmotionSubController.FearActivation < 60) and mDriveCollectionMaster.InRitual = false {
ChangeEmotion("happy","up",0.03,5)
ChangeEmotion("fear","down",0.03,5)
}

if (Triad < 0) and mDriveCollectionMaster.InRitual = false {
if Resistance < 40 {
ChangeEmotion("fear","up",0.03,5)
} else {
ChangeEmotion("anger","up",0.03,5)
}
BaseStress += 3
}

if Triad < 0 and mDriveCollectionMaster.InRitual = false {
if Chance(3) {
MoveBackForward("retreat",30,irandom_range(8,18))
}
} else {
if Chance(3) {
MoveBackForwardUnCapped("comeforward",30,irandom_range(8,18))
}
}
}
}
mDriveCollectionMaster.NoInteractionTimer = 0
HeardSoundReset = true
}

if HeardSoundReset = true {
if HeardSoundTimer > 0 {
HeardSoundTimer -= 1
}
}

if HeardSoundTimer <= 0 {
HeardSound = false
HeardSoundConf = false
HeardSoundTimer = 0
HeardSoundReset = false
}

}
}
}

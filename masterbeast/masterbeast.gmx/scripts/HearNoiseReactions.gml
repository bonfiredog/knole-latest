///HearNoiseReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if Alive > 0 {

RandomTwitch()
RandomTwitch()
ChanceToWake(0.3)
if mBehavioursReactive.Sleeping = false {
if mInterfaceController.PressBegun = false and mDriveCollectionMaster.NoInteractionTimer > 2000 and mDriveCollectionMaster.InRitual = false {
ChangeEmotion("surprise","up",0.9,30)
if Chance(60) {LittleJump()}
}
}
}
}


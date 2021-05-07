///RandomTwitch()

Twitch = choose("nose","brows","mouth","blinking","cheeks","manyblinks")
switch Twitch {
case "nose":
StartTwitchNoseSideBehaviour(irandom_range(30,50))
break;
case "brows":
StartEyebrowTwitchLeftBehaviour()
StartEyebrowTwitchRightBehaviour()
break;
case "manyblinks":
if mDriveCollectionMaster.InRitual = false and mBehavioursReactive.Sleeping = false {
NumberOfBlinks(irandom_range(2,5))
} else {
StartCheekTwitchRightBehaviour()
StartCheekTwitchLeftBehaviour()
}
break;
case "blinking":
if mDriveCollectionMaster.InRitual = false and mBehavioursReactive.Sleeping = false {
StartBlinkBehaviour()
} else {
StartCheekTwitchRightBehaviour()
StartCheekTwitchLeftBehaviour()
}
break;
case "cheeks":
StartCheekTwitchRightBehaviour()
StartCheekTwitchLeftBehaviour()
break;
case "mouth":
StartMouthCentreTwitchBehaviour(0.03,random_range(0.03,0.13))
if mCreatureController.Triad > 0 {
StartMouthSideLeftTwitchBehaviour("up")
StartMouthSideRightTwitchBehaviour("up")
} else {
StartMouthSideLeftTwitchBehaviour("down")
StartMouthSideRightTwitchBehaviour("down")
}
}

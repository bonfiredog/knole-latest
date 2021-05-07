///MouthSnapReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if instance_exists(mFinger) and point_distance(mouse_x,mouse_y,oMouthCentre.x,oMouthCentre.y) < (oMouthCentre.sprite_width * 1.6) {
if AmountForward(60) and Snapping = false and IsAlive() and (mInterfaceController.CurrentView = MacroView or (ZoomedInAndMouthPresent())) {



if MouthSnapReactionTimer <= 0 {
if IsInRitual() = false and mEmotionSubController.FearActivation < 70 and (mCreatureController.Resistance > 25 or mCreatureController.Triad > 0.3) and mEmotionSubController.ShameActivation < 30 {
if Chance(30 * ReactChance()){LittleJump()}
HoldBreathFor(20)
StopYawnBehaviour()
if Chance(30 * ReactChance()) {
StopVocalisation()
StopVocalPhrase()
}

if mouse_x < oNose1.x {
StartCheekTwitchLeftBehaviour()
StartMouthSideLeftTwitchBehaviour(choose("up","down"))
} else if mouse_x > oNose1.x {
StartCheekTwitchRightBehaviour()
StartMouthSideRightTwitchBehaviour(choose("up","down"))
}

if Chance(20 * ReactChance()){StartTwitchNoseSideBehaviour(irandom_range(10,50))}
MouthSnapReactionTimer = irandom_range(30,60)
Snapping = true
SnapNumber = 1
}
}
}
}

if MouthSnapReactionTimer > 0 {
MouthSnapReactionTimer -= 1
}

if Snapping = true {
if SnapNumber > 0 {
if mBehavioursReactive.OpenMouthActive = false { 
//StartOpenMouthBehaviour(0.03,irandom_range(0.2,0.5))
StartMouthCentreTwitchBehaviour(0.02,0.06)
SnapNumber -= 1
}
} else {
Snapping = false
SnapNumber = 0
}
}
}

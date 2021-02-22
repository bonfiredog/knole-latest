///FurShaveReaction

if DrivesAreOn() {
if mCreatureController.Alive > 0 {

if Chance(50) {
ShedNearbyFur(mouse_x,mouse_y,30)
}

if mDriveCollectionMaster.FurShaveTimer <= 0 {

if mDriveCollectionMaster.InRitual =  true {
if Chance(ChanceToRitualReact()) {
TwitchIfNearBP(mouse_x,mouse_y,350)
}
if Chance(ChanceToRitualReact()) {
RandomTwitch()
}
mCreatureController.CloseToAnne += 0.5
mCreatureController.BaseAlive -= 0.001
mCreatureController.SubIntent += 0.02
mCreatureController.BaseTemperature -= 0.4
mCreatureController.BaseTrust += 0.2
mCreatureController.BaseStress -= 0.2
mCreatureController.BaseLust += 0.2
ChangeEmotion("happy","up",EmotionStateChangeMedium,irandom_range(1,5))

if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",irandom_range(40,55),irandom_range(5,10))
}
if Chance(50) {
MoveToXY(mouse_x,mouse_y,80,mInterfaceController.CurrentView,50)
}
} else {
ChangeEmotion("surprise","up",EmotionStateChangeFast,irandom_range(1,2) * (mCreatureController.Triad * 20))  
TwitchIfNearBP(mouse_x,mouse_y,350)
RandomTwitch()
if mCreatureController.Resistance > 70 {
ChangeEmotion("anger","up",EmotionStateChangeSlow,irandom_range(2,4))
}
ChanceToWake(2)
if mBehavioursReactive.Sleeping = false {
HoldBreathFor(10 - (10 * mCreatureController.Triad))
mCreatureController.CloseToAnne += 0.2

StopShiverBehaviour()

if mCreatureController.Triad < 0 {
mCreatureController.BaseTrust -= 0.5
mCreatureController.SubIntent -= 0.005
mCreatureController.BaseResistance -= 0.5
mCreatureController.BaseStress += irandom_range(1,2)
ChangeEmotion("sad","down",0.02,2)
ChangeEmotion("happy","down",0.02,2)
ChangeEmotion("fear","up",EmotionStateChangeSlow,irandom_range(-2,-3) * mCreatureController.Triad)
mDriveCollectionMaster.BaseBreathRate += 0.2
if Chance(20 + ((40 / 100) * mEmotionSubController.FearActivation)){MoveBackForward("retreat",irandom_range(10,20),irandom_range(3,10))}
if Chance(40 - ((30 * mCreatureController.Triad))){StartSwallowBehaviour(3,20)}
if Chance(20 + ((40 / 100) * mEmotionSubController.FearActivation)){StartNumberSniffsBehaviour(1)}
} else {
mCreatureController.BaseResistance -= 0.5
mCreatureController.BaseLust += 0.5
mCreatureController.BaseStress -= irandom_range(1,2)
ChangeEmotion("sad","down",0.02,2)
ChangeEmotion("happy","up",0.02,2)
mDriveCollectionMaster.BaseBreathRate -= 0.2
}

}
}

mDriveCollectionMaster.FurShaveTimer = irandom_range(500,900)
}
}
}

///FurShaveReaction

if mDriveCollectionMaster.RealReactionsOn = true {
if mCreatureController.Alive > 0 {
mDriveCollectionMaster.alarm[1] = 100
if Chance(50) {
ShedNearbyFur(mouse_x,mouse_y,30)
}

if mDriveCollectionMaster.FurShaveTimer <= 0 {

if mDriveCollectionMaster.InRitual =  true {
if Chance(ChanceToRitualReact() 
* ReactChance()) {
TwitchIfNearBP(mouse_x,mouse_y,350)
}
if Chance(ChanceToRitualReact() 
* ReactChance()) {
RandomTwitch()
}
mCreatureController.CloseToAnne += 0.5 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.001
mCreatureController.BaseSubIntent += 0.02 * mPlotController.ISModifier
mCreatureController.BaseTemperature -= 0.4 * mPlotController.ISModifier
mCreatureController.BaseTrust += 0.2 * mPlotController.ISModifier
mCreatureController.BaseStress -= 0.2 * mPlotController.ISModifier
mCreatureController.BaseLust += 0.2 * mPlotController.ISModifier
ChangeEmotion("happy","up",EmotionStateChangeMedium,irandom_range(1,5))

if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",irandom_range(40,55),100 - mBehavioursDeliberative.PercentForward)
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
mCreatureController.CloseToAnne += 0.2  * mPlotController.ISModifier

StopShiverBehaviour()

if mCreatureController.Triad < 0 {
mCreatureController.BaseTrust -= 0.5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.005 * mPlotController.ISModifier
mCreatureController.BaseResistance -= 0.5 * mPlotController.ISModifier
mCreatureController.BaseStress += irandom_range(1,2)
ChangeEmotion("sad","down",0.02,2)
ChangeEmotion("happy","down",0.02,2)
ChangeEmotion("fear","up",EmotionStateChangeSlow,irandom_range(-2,-3) * mCreatureController.Triad)
mDriveCollectionMaster.BaseBreathRate += 0.0004
if Chance((20 + ((40 / 100) * mEmotionSubController.FearActivation)) 
* ReactChance()){MoveBackForward("retreat",irandom_range(10,20),irandom_range(3,10))}
if Chance((40 - ((30 * mCreatureController.Triad))) 
* ReactChance()){StartSwallowBehaviour(3,20)}
if Chance((20 + ((40 / 100) * mEmotionSubController.FearActivation)) 
* ReactChance()){StartNumberSniffsBehaviour(1)}
} else {
mCreatureController.BaseResistance -= 0.5  * mPlotController.ISModifier
mCreatureController.BaseLust += 0.5  * mPlotController.ISModifier
mCreatureController.BaseStress -= irandom_range(1,2)
ChangeEmotion("sad","down",0.02,2)
ChangeEmotion("happy","up",0.02,2)
mDriveCollectionMaster.BaseBreathRate -= 0.0004
}

}
}

mDriveCollectionMaster.FurShaveTimer = irandom_range(500,900)
}
}
}

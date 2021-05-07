///HearLoudNoiseReactions()
with mCreatureController {

if mDriveCollectionMaster.RealReactionsOn = true {
if mBehavioursReactive.Sleeping = false {
ReduceTabooLayerHealth(0.3)
mDriveCollectionMaster.alarm[1] = 60
StopXYMove()
if Chance(70) {
StopMoveInOut()
} else {
if IsInRitual() = false {
MoveBackForward("retreat",10,20 + ((20 / 100) * mEmotionSubController.FearActivation))
}
}
if mBehavioursDeliberative.Vocalising = true {
StopOrNot = choose(-1,1,1)
StopOrNot += ((1.5 / 100) * mCreatureController.Resistance)
if StopOrNot > 0 {
StopVocalisation()
StopVocalPhrase()
}
}


if Chance(40) {WinkRun(irandom_range(2,6))}
BaseSubIntent -= 0.05  * mPlotController.ISModifier
BaseTrust -= 4  * mPlotController.ISModifier
CloseToAnne += 2 * mPlotController.ISModifier
if IsInRitual() = false {
ChangeEmotion("fear","up",1,max(0,((25 / 100) * (Triad * 100))))
ChangeEmotion("happy","down",1,(10 + ((10 / 100) * Pain)))
ChangeEmotion("anger","up",0.5,((20 / 100) * Resistance))
}
LittleJump()
if mDriveCollectionMaster.NoInteractionTimer > 1000 {
VocaliseChance(30 + ((30 / 100) * mEmotionSubController.FearActivation))
}

BaseResistance -= 2.5 * mPlotController.ISModifier
BaseStress += 2.5 * mPlotController.ISModifier
BasePain += 2 * mPlotController.ISModifier

if Chance(20 
* ReactChance()){RandomShake()}
TwitchRun(irandom_range(5,10))
mDriveCollectionMaster.BaseBreathRate += irandom_range(0.04,0.06)
}


if mBehavioursReactive.Sleeping = true {
ChanceToWake(40)
}
if Faces = "none" and mInterfaceController.PressBegun = false {
ChangeEmotion("surprise","up",0.7,irandom_range(40,70))
} else {
ChangeEmotion("surprise","up",0.7,irandom_range(40,50))
}
}
}

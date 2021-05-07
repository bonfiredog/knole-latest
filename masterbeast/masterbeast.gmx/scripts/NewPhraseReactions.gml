///NewPhraseReactions()

if mDriveCollectionMaster.RealReactionsOn = true {

ChanceToWake(10 * ReactChance())
if mBehavioursReactive.Sleeping = false {
if mDriveCollectionMaster.InRitual = true {
TwitchRun(irandom_range(5,10))
if Chance(50 * ReactChance()){HoldBreathFor(irandom_range(10,30))}
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
StopVocalPhrase()
if Chance(75 * ReactChance()) and mBehavioursDeliberative.PercentForward < 100{MoveBackForward("comeforward",20,100 - mBehavioursDeliberative.PercentForward)}
CloseToAnne += 1 * mPlotController.ISModifier
ChangeEmotion("happy","up",0.3,10)
ChangeEmotion("fear","down",0.3,10)
ChangeEmotion("anger","down",0.3,10)
StartTwitchNoseSideBehaviour(irandom_range(20,30))
BaseLust += 10 * mPlotController.ISModifier
} else {
if mDriveCollectionMaster.TimeSinceLastSpeech > 500 {
ChangeEmotion("surprise","up",0.3,25)
}

TwitchRun(irandom_range(5,10))
if Chance(50 * ReactChance()){HoldBreathFor(irandom_range(50,60))}
if Chance((40 + ((30 / 100) * mEmotionSubController.FearActivation)) * ReactChance()){StartSwallowBehaviour(20,3)}
RCom = choose(-1,1)
if RCom = 1 {StartEyebrowTwitchLeftBehaviour() StartEyebrowTwitchRightBehaviour()}
RCom = choose(-1,1)
if RCom = 1 {StartTwitchNoseSideBehaviour(irandom_range(20,30))}
RCom = choose(-1,1)
if RCom = 1 {StartBlinkBehaviour()}
if Chance(60 * ReactChance()) {StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(40 * ReactChance()) {LittleJump()}
if (mEmotionSubController.FearActivation > 50) {
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
StopVocalPhrase()
if Triad < 0 {
ChangeEmotion("fear","up",0.3,15)
ChangeEmotion("happy","down",0.2,15)
ChangeEmotion("anger","up",0.3,15)
if Chance(20 * ReactChance()){MoveBackForward("retreat",20,100 - mBehavioursDeliberative.PercentForward)}
}
}
}
} 
}

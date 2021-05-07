///NoPsalmReactions()

with mCreatureController {
if Triad > 0.3 { 
BaseStress += 5* mPlotController.ISModifier
CloseToAnne -= 5 * mPlotController.ISModifier
BaseSubIntent -= 0.1 * mPlotController.ISModifier
BaseTrust -= 5 * mPlotController.ISModifier
BaseResistance += 5 * mPlotController.ISModifier
ChangeEmotion("happy","down",0.2,15)
if mEmotionSubController.FearActivation < 50 {
ChangeEmotion("anger","up",0.2,15)
} else {
ChangeEmotion("sad","up",0.2,15)
}
ChangeEmotion("shame","up",0.2,15)
ChangeEmotion("surprise","up",0.4,35)

MoveBackForward("comeforward",MoveSpeedCalc(),100 - mBehavioursDeliberative.PercentForward)
TwitchRun(15)
LittleJump()
if Chance(60){RandomVoc(0.7)}
if Chance(50) {
StartNumberSniffsBehaviour(3)
} else {
RandomShake()
}
if Chance(70) {EyeSquint(3,true,70)}
}
}

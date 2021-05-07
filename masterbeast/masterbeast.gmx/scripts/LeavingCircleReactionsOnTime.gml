///LeavingCircleReactionsOnTime()

with mCreatureController {
BaseLust += 5  * mPlotController.ISModifier
NodUpDown(1)
CloseToAnne += 5  * mPlotController.ISModifier
EyeSquint(1,true,120)
TwitchRun(15)

ChangeEmotion("happy","up",0.3,15)
if Triad > 0 {
ChangeEmotion("sad","up",0.3,10)
}

}

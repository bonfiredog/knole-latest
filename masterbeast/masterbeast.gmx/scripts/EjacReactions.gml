///EjacReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
mDriveCollectionMaster.alarm[1] = 250
with mCreatureController {
EjacTime = irandom_range(120,250)
LittleJump()
RandomShake()
ShakeCaul(3,0.5)
VocaliseChance(75 * ReactChance())
StartCaulVibrateBehaviour(EjacTime + 50)
if Chance(35){StartSlipBehaviour()}
if Chance(80){HoldBreathFor(EjacTime)}
mDriveCollectionMaster.BaseBreathRate += 0.2
EyeSquint(irandom_range(0,1),true,EjacTime)
StartCloseEyeBehaviour("both",2)
StopVocalisation()
StopSneezeBehaviour()
StopVocalPhrase()
StopYawnBehaviour()
WinkRun(irandom_range(20,40))
StopSneezeBehaviour()
MoveBackForwardUnCapped("retreat",MoveSpeedCalc(),irandom_range(30,40) - (min(0,50)))
TwitchRun(irandom_range(60,100))
ChangeEmotion("surprise","up",1,70)
BaseLust -= 100  * mPlotController.ISModifier
BaseTiredness -= 30  * mPlotController.ISModifier
BasePain += 5  * mPlotController.ISModifier
mDriveCollectionMaster.EjacTrack = -300

if IsInRitual() {
ChangeEmotion("happy","up",1,40)
ChangeEmotion("anger","down",1,40)
ChangeEmotion("shame","up",1,20)
ChangeEmotion("sad","down",1,40)
ChangeEmotion("fear","down",1,40)
CloseToAnne += 20 * mPlotController.ISModifier
BaseSubIntent += 0.5 * mPlotController.ISModifier
BaseTrust -= 30 * mPlotController.ISModifier
BaseResistance -= 30 * mPlotController.ISModifier
BaseStress -= 20 * mPlotController.ISModifier
} else {
if Triad >= 0 {
ChangeEmotion("happy","up",1,40)
ChangeEmotion("anger","down",1,40)
ChangeEmotion("shame","up",1,20)
ChangeEmotion("sad","down",1,40)
ChangeEmotion("fear","down",1,40)
CloseToAnne += 20 * mPlotController.ISModifier
BaseSubIntent += 0.5 * mPlotController.ISModifier
BaseTrust -= 30 * mPlotController.ISModifier
BaseResistance -= 30 * mPlotController.ISModifier
BaseStress -= 20 * mPlotController.ISModifier
} else {
ChangeEmotion("happy","down",1,40)
ChangeEmotion("anger","up",1,40)
ChangeEmotion("shame","up",1,20)
ChangeEmotion("sad","up",1,40)
ChangeEmotion("fear","up",1,40)
CloseToAnne += 20 * mPlotController.ISModifier
BaseSubIntent -= 0.5 * mPlotController.ISModifier
BaseTrust -= 30 * mPlotController.ISModifier
BaseResistance += 30 * mPlotController.ISModifier
BaseStress += 20 * mPlotController.ISModifier
}
}
}
}

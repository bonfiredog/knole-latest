///EjacTrackReactions()
if mDriveCollectionMaster.RealReactionsOn = true {
with mCreatureController {
BaseTiredness += 0.02  * mPlotController.ISModifier
CloseToAnne += 0.02  * mPlotController.ISModifier
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){TwitchRun(irandom_range(10,20))}
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){ShakeCaul(5 + ((5 / 300) * mDriveCollectionMaster.EjacTrack),0.5)}
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){EyeSquint(irandom_range(0,3),true,irandom_range(50,200))}
mDriveCollectionMaster.BaseBreathRate += 0.00004

if IsInRitual() {
BaseLust += 0.02 * mPlotController.ISModifier
BaseStress -= 0.03 * mPlotController.ISModifier
BaseResistance -= 0.03 * mPlotController.ISModifier
BaseSubIntent += 0.0002 * mPlotController.ISModifier
ChangeEmotionStep("happy","up",0.02)
ChangeEmotionStep("fear","down",0.02)
ChangeEmotionStep("anger","down",0.02)
ChangeEmotionStep("sad","down",0.02)
ChangeEmotionStep("shame","up",0.005)
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){NodUpDown(irandom_range(1,3))}
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){MoveBackForward("comeforward",20,100 - mBehavioursDeliberative.PercentForward)}
if Chance(0.4){VocaliseChance(100)}
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){StartSwallowBehaviour(30,40)}
} else {
if Triad >= 0 {
BaseLust += 0.02 * mPlotController.ISModifier
BaseStress -= 0.03 * mPlotController.ISModifier
BaseResistance -= 0.03 * mPlotController.ISModifier
BaseSubIntent += 0.0002 * mPlotController.ISModifier
ChangeEmotionStep("happy","up",0.02)
ChangeEmotionStep("anger","down",0.02)
ChangeEmotionStep("fear","down",0.02)
ChangeEmotionStep("sad","down",0.02)
ChangeEmotionStep("shame","up",0.005)
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){NodUpDown(irandom_range(1,3))}
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){MoveBackForward("comeforward",20,100 - mBehavioursDeliberative.PercentForward)}
if Chance(0.4){VocaliseChance(100)}
if Chance(0.05 + (0.2 / 300) * mDriveCollectionMaster.EjacTrack){StartSwallowBehaviour(30,40)}
} else {
BaseStress += 10 * mPlotController.ISModifier
BaseLust -= 10 * mPlotController.ISModifier
BaseSubIntent -= 0.2 * mPlotController.ISModifier
BaseResistance += 14 * mPlotController.ISModifier
ChangeEmotionStep("happy","down",15)
ChangeEmotionStep("anger","up",20)
ChangeEmotionStep("fear","up",15)
ChangeEmotionStep("sad","up",20)
ChangeEmotionStep("shame","up",20)

if Chance(45 * ReactChance()){Buck()}
if Chance(60){RandomShake()}
MoveBackForward("retreat",20,irandom_range(10,20))
if Chance(75 * ReactChance()){VocaliseChance(100)}
if Chance(60 * ReactChance()) {StartSwallowBehaviour(30,40)}
mDriveCollectionMaster.EjacTrack = -300
}
}
}
}

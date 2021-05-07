///EODOngoingReaction()

with mCreatureController {
BaseTiredness += 0.005 * mPlotController.ISModifier
BasePain += 0.005 * mPlotController.ISModifier
BaseStress += 0.005 * mPlotController.ISModifier
CloseToAnne -= 0.005 * mPlotController.ISModifier
BaseSubIntent -= 0.00005 * mPlotController.ISModifier
BaseTrust -= 0.005 * mPlotController.ISModifier
BaseResistance += 0.005 * mPlotController.ISModifier
mDriveCollectionMaster.BaseBreathRate += 0.000001 * mPlotController.ISModifier

if IsInRitual() {
mDriveCollectionMaster.RitualTolerance += 1
} else {
ChangeEmotionStep("happy","down",0.005)
ChangeEmotionStep("anger","up",0.005)
ChangeEmotionStep("fear","up",0.005)
if Chance(0.03){StartBuck()}
if Chance(0.03){RandomShake()}
if Chance(0.03){VocaliseChance(100)}
}
}

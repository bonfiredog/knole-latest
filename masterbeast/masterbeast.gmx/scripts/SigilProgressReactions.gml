///SigilProgressReactions() 

if mDriveCollectionMaster.RealReactionsOn = true {

mDriveCollectionMaster.SigilProgressIntensity += 1

ChanceToWake(0.05)

if IsInRitual() {
mCreatureController.BaseResistance -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseTiredness += 0.02 * mPlotController.ISModifier
mCreatureController.BasePain += 0.05 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.001 * mPlotController.ISModifier
mCreatureController.CloseToAnne += 0.07 * mPlotController.ISModifier
mCreatureController.BaseTrust += 0.05 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.02 * mPlotController.ISModifier
ChangeEmotionStep("happy","up",0.3)
mCreatureController.BaseLust += 0.3 * mPlotController.ISModifier
} else {
mCreatureController.BaseResistance -= 0.3 * mPlotController.ISModifier
mCreatureController.BaseTiredness += 0.02 * mPlotController.ISModifier
mCreatureController.BasePain += 0.05 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.001 * mPlotController.ISModifier
mCreatureController.BaseStress += 0.07 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.07 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.02 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 0.07 * mPlotController.ISModifier
ChangeEmotionStep("happy","down",0.3)
if mCreatureController.Resistance > 40 {
ChangeEmotionStep("anger","up",0.3)
} else {
ChangeEmotionStep("fear","up",0.3)
}
if Chance(2) {WinkRun(irandom_range(2,6))}
mCreatureController.BaseLust += 0.3  * mPlotController.ISModifier
if mCreatureController.Triad > 0 {
ChangeEmotionStep("shame","up",0.3)
}
}

}

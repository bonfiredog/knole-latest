///PullHornOngoing()

if mDriveCollectionMaster.RealReactionsOn = true {
ChanceToWake(0.3)
if IsAlive() {
if IsInRitual() {

with mCreatureController {
BaseResistance -= 0.3  * mPlotController.ISModifier
BaseStress += 0.3  * mPlotController.ISModifier
BasePain += 0.3  * mPlotController.ISModifier
BaseAlive -= 0.0003  * mPlotController.ISModifier
CloseToAnne += 0.3  * mPlotController.ISModifier
BaseLust += 0.3  * mPlotController.ISModifier
}

ChangeEmotionStep("happy","up",0.005)
ChangeEmotionStep("fear","up",0.00005)

mDriveCollectionMaster.BaseBreathRate += 0.000004
if (ChanceToRitualReact / 130) * ReactChance() {
RandomVoc(0.2)
}
if (ChanceToRitualReact / 150) * ReactChance() {
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
}
ShiverChance(0.5)
if (ChanceToRitualReact / 70) * ReactChance() {
TwitchRun(irandom_range(2,5))
}
if (ChanceToRitualReact / 130) * ReactChance() {
NodUpDown(irandom_range(2,4))
}
} else {
with mCreatureController {
BaseResistance -= 0.3 * mPlotController.ISModifier
BaseStress += 0.3 * mPlotController.ISModifier
BasePain += 0.3 * mPlotController.ISModifier
BaseAlive -= 0.003 * mPlotController.ISModifier
CloseToAnne -= 0.3 * mPlotController.ISModifier
BaseSubIntent -= 0.005 * mPlotController.ISModifier
BaseTrust -= 0.3 * mPlotController.ISModifier
BaseLust -= 0.3 * mPlotController.ISModifier
}
ChangeEmotionStep("happy","down",0.3)
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",0.3)
} else {
ChangeEmotionStep("fear","up",0.3)
}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("sad","up",0.3)
ChangeEmotionStep("shame","up",0.3)
}

mDriveCollectionMaster.BaseBreathRate += 0.000004
if Chance(2 * ReactChance()) {
RandomVoc(0.9)
}
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
if Chance(2 * ReactChance()) {
TwitchRun(irandom_range(2,5))
}

}
}

}


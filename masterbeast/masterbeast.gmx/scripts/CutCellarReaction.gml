///CutCellarReaction()

if mDriveCollectionMaster.RealReactionsOn = true {

if AmountForward(80) and IsAlive() {
if Chance(1 - LowAliveMod(0.5)) {
TwitchRun(4)
}

if IsInRitual() {
mCreatureController.BaseResistance -= 0.05 * mPlotController.ISModifier
mCreatureController.BasePain += 0.05 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.00005 * mPlotController.ISModifier
mCreatureController.CloseToAnne += 0.05 * mPlotController.ISModifier
mCreatureController.BaseTrust += 0.05 * mPlotController.ISModifier
mCreatureController.AnneIntent += 0.05 * mPlotController.ISModifier
ChangeEmotionStep("happy","up",0.05)
mCreatureController.BaseLust += 0.05 * mPlotController.ISModifier
} else {
mCreatureController.BaseResistance -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseStress += 0.05 * mPlotController.ISModifier
mCreatureController.BasePain += 0.05 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.00005 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
ChangeEmotionStep("happy","down",0.05)
mCreatureController.BaseLust += 0.05 * mPlotController.ISModifier
ChangeEmotionStep("shame","up",0.05)
ChangeEmotionStep("sad","up",0.05)
if Triad > 0 {
ChangeEmotionStep("anger","up",0.05)
} else {
ChangeEmotionStep("fear","up",0.05)
}
if Chance(0.1 - LowAliveMod(0.05)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
if Chance(0.5 - LowAliveMod(0.05)) {
RandomShake()
}
if Chance(0.5 - LowAliveMod(0.05)) {
VocaliseChance(100)
}
if Chance(0.05 - LowAliveMod(0.025)) {
MoveBackForward("retreat",10,irandom_range(5,10))
}
}
}
}

///TouchBottomDripReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if AmountForward(80) and IsAlive() {
TwitchRun(10)

if IsInRitual() {
mCreatureController.BaseResistance -= 0.08* mPlotController.ISModifier
mCreatureController.BasePain += 0.08* mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.00005* mPlotController.ISModifier
mCreatureController.CloseToAnne += 0.08* mPlotController.ISModifier
mCreatureController.BaseTrust += 0.08* mPlotController.ISModifier 
ChangeEmotionStep("happy","up",0.08)
mCreatureController.BaseLust += 0.08* mPlotController.ISModifier 
} else {
mCreatureController.BaseResistance -= 0.08 * mPlotController.ISModifier
mCreatureController.BaseStress += 0.08 * mPlotController.ISModifier
mCreatureController.BasePain += 0.08* mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.01 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 0.08 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.08 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.08* mPlotController.ISModifier 
ChangeEmotionStep("happy","down",0.08)
mCreatureController.BaseLust += 0.08
ChangeEmotionStep("shame","up",0.08)
ChangeEmotionStep("sad","up",0.08)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.08)
} else {
ChangeEmotionStep("fear","up",0.08)
}
if Chance(1 - LowAliveMod(0.7)) {
ShiftAway(mouse_x,mouse_y,irandom_range(100,200),random(360))
}
WinkRun(irandom_range(2,6))
if Chance(1 - LowAliveMod(0.7)) {
RandomShake()
}
if Chance(0.1 - LowAliveMod(0.7)) {
VocaliseChance(100)
}
if Chance(0.08 - LowAliveMod(0.02)) {
MoveBackForward("retreat",10,irandom_range(5,10))
}
}
}
}

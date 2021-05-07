///PressThroatReaction()

if mDriveCollectionMaster.RealReactionsOn = true and mInterfaceController.Healing = false {

if AmountForward(80) and IsAlive() {
StopYawnBehaviour()
StopXYMove()
StopVocalisation()
ChanceToWake(0.03)
PressThroatTimer += 1
PitchMod += 0.002
HoldBreathFor(3)
mDriveCollectionMaster.BaseBreathRate += 0.000002
ReduceTabooLayerHealth(0.0001)
mCreatureController.BaseResistance -= (0.05 + ((0.05 / 200) * PressThroatTimer))
mCreatureController.BasePain += 0.05 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.0005 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseLust += 0.05 * mDriveCollectionMaster.ISModifier

if Chance(0.5 + ((0.5 / 200) * PressThroatTimer)) {
TwitchRun(irandom_range(3,10))
}
if Chance(0.5 + ((0.5 / 200) * PressThroatTimer)) {WinkRun(irandom_range(2,6))}
if Chance(1 + ((3 / 200) * PressThroatTimer)) {
EyeSquint(irandom_range(0,3),true,irandom_range(50,180))
}
if Chance(2 + ((3 / 200) * PressThroatTimer)) {
StartCoughBehaviour()
}
mDriveCollectionMaster.CoughTimer -= 1
if Chance(1 + ((3 / 200) * PressThroatTimer)) {
StartSwallowBehaviour(10,30)
}
if Chance(1 + ((3 / 200) * PressThroatTimer)) {
RandomShake()
} 

if IsInRitual() {
if Chance(0.5 + ((2 / 200) * PressThroatTimer)) {
MoveToXY(mouse_x,mouse_y,MoveSpeedCalc(),mInterfaceController.CurrentView,ZoomSpeedCalc())
}
mCreatureController.CloseToAnne += 0.05 * mPlotController.ISModifier
mCreatureController.BaseStress += (0.05 + ((0.05 / 200) * PressThroatTimer))
} else {
mCreatureController.BaseStress += (0.05 + ((0.05 / 200) * PressThroatTimer))
mCreatureController.CloseToAnne -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.005 * mPlotController.ISModifier
ChangeEmotionStep("happy","down",0.05 + ((0.05 / 200) * PressThroatTimer))
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.05 + ((0.05 / 200) * PressThroatTimer))
} else {
ChangeEmotionStep("fear","up",0.05 + ((0.05 / 200) * PressThroatTimer))
}
if Chance(0.03 + ((0.05 / 200) * PressThroatTimer)) {
RandomVoc(1.4)
}
}
}
}

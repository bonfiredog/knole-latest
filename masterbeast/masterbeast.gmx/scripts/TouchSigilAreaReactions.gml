///TouchSigilAreaReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() and AmountForward(70) {

if TSATimer <= 0 {
if IsInRitual() = false {
ChanceToWake(3)
LittleJump()
TwitchRun(irandom_range(5,10))
StopYawnBehaviour()
VocaliseChance(25 + NumberISMod(mCreatureController.Resistance,20) + NumberISMod(mCreatureController.Stress,20) + NumberEmoMod(mEmotionSubController.FearActivation,20))
StopXYMove()
StopMoveInOut()
if Chance(35){HoldBreathFor(irandom_range(25,60))}
if mCreatureController.Lust > 30 { ShakeCaul(1,irandom_range(30,50)) StartCaulVibrateBehaviour(irandom_range(20,50))}
if Chance(25 + NumberISMod(mCreatureController.Resistance,20) + NumberISMod(mCreatureController.Stress,20) + NumberEmoMod(mEmotionSubController.FearActivation,20)){MoveBackForwardUnCapped("retreat",15,irandom_range(5,20))}
} else {
MoveToXY(697,1065,15,mInterfaceController.CurrentView,10)
}

if IsAsleep() = false {
NumberOfBlinks(3)
if mCreatureController.Lust > 30 and Chance(10 * ReactChance()) {ShakeCaul(1,irandom_range(30,50)) StartCaulVibrateBehaviour(irandom_range(20,50))}

if IsInRitual = true {
mCreatureController.BaseResistance -= 4 * mPlotController.ISModifier
mCreatureController.BaseTrust += 8 * mPlotController.ISModifier
mCreatureController.BaseTiredness += 1 * mPlotController.ISModifier
mCreatureController.BasePain += 3 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.05 * mPlotController.ISModifier
mCreatureController.CloseToAnne += 3 * mPlotController.ISModifier
ChangeEmotionStep("happy","up",3)
ChangeEmotionStep("fear","down",3)
ChangeEmotionStep("anger","down",3)
if Chance(40 * ReactChance()){NodUpDown(irandom_range(2,4),15)}
mCreatureController.BaseLust += 3  * mPlotController.ISModifier
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",15,100 - mBehavioursDeliberative.PercentForward)
}
mDriveCollectionMaster.BaseBreathRate += 0.0005
} else {
mCreatureController.BaseTiredness += 0.3 * mPlotController.ISModifier
mCreatureController.BasePain += 4 * mPlotController.ISModifier
mCreatureController.BaseResistance += 4 * mPlotController.ISModifier
mCreatureController.BaseStress += 4 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 3 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 3 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.03 * mPlotController.ISModifier
if Chance(40 * ReactChance()){RandomShake()}
mCreatureController.CloseToAnne -= 2  * mPlotController.ISModifier
ChangeEmotionStep("happy","down",3)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",3) 
} else {
ChangeEmotionStep("fear","up",3)
}
mDriveCollectionMaster.BaseBreathRate += 0.0005
mCreatureController.BaseLust += 3  * mPlotController.ISModifier
}
}
mDriveCollectionMaster.alarm[1] = 60
TSATimer = irandom_range(120,300) - NumberISMod(mCreatureController.Stress,20) - NumberISMod(mCreatureController.Tiredness,20) + LowAliveMod(200) + NumberISMod(mCreatureController.Trust,20)
}
}
}

///TouchSigilAreaReactions()

if DrivesAreOn() {
if IsAlive() and AmountForward(70) {

if TSATimer <= 0 {
if IsInRitual() = false {
ChanceToWake(3)
LittleJump()
TwitchRun(irandom_range(5,10))
StopYawnBehaviour()
VocaliseChance(10 + NumberISMod(Resistance,20) + NumberISMod(Stress,20) + NumberEmoMod(FearActivation,20))
StopXYMove()
StopMoveInOut()
if Chance(35){HoldBreathFor(irandom_range(25,60))}
if mCreatureController.Lust > 30 { ShakeCaul(1,irandom_range(30,50)) StartCaulVibrateBehaviour(irandom_range(20,50))}
if Chance(25 + NumberISMod(Resistance,20) + NumberISMod(Stress,20) + NumberEmoMod(FearActivation,20)){MoveBackForwardUnCapped("retreat",15,irandom_range(5,20))}
TSATimer = irandom_range(1500,2500) + NumberISMod(Stress,300) + NumberISMod(Tiredness,400) + LowAliveMod(500) - NumberISMod(Trust,500)
} else {
MoveToXY(oSigilArea.x,oSigilArea.y,15,mInterfaceController.CurrentView,10)
if IsAsleep() = false {
NumberOfBlinks(3)
if mCreatureController.Lust > 30 and Chance(10) {ShakeCaul(1,irandom_range(30,50)) StartCaulVibrateBehaviour(irandom_range(20,50))}

if IsInRitual = true {
mCreatureController.BaseResistance -= 0.05
mCreatureController.BaseTrust += 0.05
mCreatureController.BaseTiredness += 0.05
mCreatureController.BasePain += 0.05
mCreatureController.BaseAlive -= 0.005
mCreatureController.CloseToAnne += 0.05
ChangeEmotionStep("happy","up",0.05)
ChangeEmotionStep("fear","down",0.05)
ChangeEmotionStep("anger","down",0.05)
if Chance(0.02){NodUpDown(irandom_range(2,4),15)}
mCreatureController.BaseLust += 0.05
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",15,100 - mBehavioursDeliberative.PercentForward)
}
mDriveCollectionMaster.BaseBreathRate += 0.005
} else {
mCreatureController.BaseTiredness += 0.05
mCreatureController.BasePain += 0.05
mCreatureController.BaseResistance += 0.05
mCreatureController.BaseStress += 0.05
mCreatureController.BaseAlive -= 0.005
mCreatureController.BaseTrust -= 0.05
mCreatureController.BaseSubIntent -= 0.005
if Chance(0.02){RandomShake()}
mCreatureController.CloseToAnne -= 0.05
ChangeEmotionStep("happy","down",0.05)
if mCreatureController.Triad > 0 {
ChangeEmotionStep("anger","up",0.05) 
} else {
ChangeEmotionStep("fear","up",0.05)
}
mDriveCollectionMaster.BaseBreathRate += 0.005
mCreatureController.BaseLust += 0.05
}
}
}
}
}
}

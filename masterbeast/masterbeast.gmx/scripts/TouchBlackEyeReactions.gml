///TouchBlackEyeReactions(eye,lorr)

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() and AmountForward(70) {
ChanceToWake(20)
ReduceTabooLayerHealth(0.5)
StopYawnBehaviour()
mCreatureController.BasePain += 5 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.05 * mDriveCollectionMaster.ISModifier
if Chance(70 
* ReactChance()) {LittleJump()}
if Chance(50) {StartTwitchBehaviour(30,30,10)}
if Chance(50) {StartTwitchNoseSideBehaviour(15)}
if Chance(50) {StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour()}
if Chance(50 
* ReactChance()) {RandomShake()}
choose(
EyeSquint(6 - round(((5 / 100) * argument0.Blackness)),true,60),
StartWinkBehaviour(argument1)
)

if IsAsleep() = false {
if IsInRitual() {

if ChanceToRitualReact() {StartNumberSniffsBehaviour(1) }
HoldBreathFor(25)
if ChanceToRitualReact() {TwitchRun(irandom_range(4,8))}

mCreatureController.CloseToAnne += 5  * mPlotController.ISModifier
if ChanceToRitualReact() 
* ReactChance() {RandomVoc(0.1) }
} else {
if mInterfaceController.Healing = false {
HoldBreathFor(irandom_range(20,45))
mDriveCollectionMaster.BaseBreathRate += 0.005
if Chance(40) {StartNumberSniffsBehaviour(1) }
if Chance(40) {TwitchRun(irandom_range(4,8))}
if Chance(40) {ShiftAway(argument0.x,argument0.y,irandom_range(30,60),random(360))}

ChangeEmotion("fear","up",0.3,10)
ChangeEmotion("happy","down",0.3,10)
mCreatureController.BaseResistance -= 8 * mPlotController.ISModifier
mCreatureController.BaseStress += 8 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.07 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 8 * mPlotController.ISModifier

if Resistance > 30 {
ChangeEmotion("anger","up",0.3,10)
}

if mDriveCollectionMaster.EyeBlackTimer <= 0 {
ChangeEmotion("surprise","up",1,50)
if Chance(70 
* ReactChance()){MoveBackForwardUnCapped("retreat",15,irandom_range(20,30))}
if Chance(30 
* ReactChance()){RandomVoc(0.25)}
mDriveCollectionMaster.EyeBlackTimer = irandom_range(2000,3000) - NumberISMod(mCreatureController.Trust,500) - NumberISMod(mCreatureController.CloseToAnne,500) + LowAliveMod(1000) + NumberISMod(mCreatureController.Pain,500) + NumberISMod(mCreatureController.Tiredness,500) + NumberEmoMod(mEmotionSubController.FearActivation,500)
}

} 
}
}
}
mDriveCollectionMaster.alarm[1] = 60
}

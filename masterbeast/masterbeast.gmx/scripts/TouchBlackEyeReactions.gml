///TouchBlackEyeReactions(eye,lorr)

if DrivesAreOn() {
if IsAlive() and AmountForward(70) {
ChanceToWake(20)
StopYawnBehaviour()
mCreatureController.BasePain += 5
mCreatureController.BaseAlive -= 0.05
if Chance(35) {StartTwitchBehaviour(30,30,10)}
if Chance(35) {StartTwitchNoseSideBehaviour(15)}
if Chance(35) {StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour()}
choose(
EyeSquint(6 - round(((5 / 100) * argument0.Blackness)),true,60),
StartWinkBehaviour(argument1)
)

if IsAsleep() = false {
if IsInRitual() {

if ChanceToRitualReact() {StartNumberSniffsBehaviour(1) }
HoldBreathFor(25)
if ChanceToRitualReact() {TwitchRun(irandom_range(4,8))}

mCreatureController.CloseToAnne += 5
if ChanceToRitualReact() {RandomVoc(0.1) }
} else {
HoldBreathFor(irandom_range(20,45))
mDriveCollectionMaster.BaseBreathRate += 0.3
if Chance(30) {StartNumberSniffsBehaviour(1) }
if Chance(20) {TwitchRun(irandom_range(4,8))}
if Chance(40) {ShiftAway(argument0.x,argument0.y,irandom_range(35,100),random(360))}

ChangeEmotion("fear","up",0.3,15)
ChangeEmotion("happy","down",0.3,15)
mCreatureController.BaseResistance -= 3
mCreatureController.BaseStress += 3
mCreatureController.BaseTrust -= 3
mCreatureController.BaseSubIntent -= 0.03
mCreatureController.CloseToAnne -= 3

if mDriveCollectionMaster.EyeBlackTimer <= 0 {
ChangeEmotion("surprise","up",1,50)
if Chance(50){MoveBackForwardUnCapped("retreat",15,irandom_range(20,30))}
if Chance(30){RandomVoc(0.25)}
if Chance(50){LittleJump()}
mDriveCollectionMaster.EyeBlackTimer = irandom_range(2000,3000) - NumberISMod(Trust,500) - NumberISMod(CloseToAnne,500) + LowAliveMod(1000) + NumberISMod(Pain,500) + NumberISMod(Tiredness,500) + NumberEmoMod(FearActivation,500)
}

} 
}
}
}

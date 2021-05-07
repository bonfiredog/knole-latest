///PullHornInitial()

if mDriveCollectionMaster.RealReactionsOn = true {
if AmountForward(80) and IsAlive() {
ReduceTabooLayerHealth(0.5)
ChanceToWake(50)
StopYawnBehaviour()
if Chance(70 
* ReactChance()) {
TwitchRun(irandom_range(4,10))
}
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",30,100 - mBehavioursDeliberative.PercentForward)
}

//In Ritual

if IsInRitual() {
if ChanceToRitualReact() 
* ReactChance() {
StartNumberSniffsBehaviour(1)
}
if ChanceToRitualReact() 
* ReactChance() {
StartSwallowBehaviour(10,30)
}
if ChanceToRitualReact() 
* ReactChance() {
ChangeEmotion("fear","up",0.5,10)
ChangeEmotion("happy","up",0.5,10)
}
with mCreatureController {
BaseLust += 5  * mPlotController.ISModifier
BaseResistance -= 5  * mPlotController.ISModifier
CloseToAnne += 5  * mPlotController.ISModifier
BaseAlive -= 0.05  * mPlotController.ISModifier
BaseStress += 5  * mPlotController.ISModifier
BasePain += 5  * mPlotController.ISModifier
}

if mDriveCollectionMaster.PullHornTimer <= 0 or mDriveCollectionMaster.NoReactionTimer > 3000 {
if Chance(60 
* ReactChance()) {
HoldBreathFor(irandom_range(70,100))
}
if ChanceToRitualReact() 
* ReactChance() {
LittleJump()
}
ChangeEmotion("surprise","up",1.3,irandom_range(40,60))
mDriveCollectionMaster.PullHornTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(mCreatureController.Tiredness,2000) - NumberISMod(mCreatureController.Trust,1000) - (2000 * mCreatureController.Triad)
}

//Not In Ritual

} else {
if Chance(50 
* ReactChance()) {
StartNumberSniffsBehaviour(1)
}
if Chance(50 
* ReactChance()) {
RandomVoc(0.8)
}
if Chance(50 
* ReactChance()) {
StartSwallowBehaviour(10,30)
}
if mDriveCollectionMaster.PullHornTimer <= 0 or mDriveCollectionMaster.NoReactionTimer > 3000 {
if Chance(60 
* ReactChance()) {
HoldBreathFor(irandom_range(70,100))
}
if Chance(60 
* ReactChance()) {
RandomShake()
}
if Chance(100) {
LittleJump()
}
if Chance(70 
* ReactChance()) {
EmotionRequest()
}
ChangeEmotion("surprise","up",1.3,irandom_range(40,60)  - ((20 / 20) * mCreatureController.HornsPulled))
mDriveCollectionMaster.PullHornTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(mCreatureController.Tiredness,2000) - NumberISMod(mCreatureController.Trust,1000) - (2000 * mCreatureController.Triad)
}

if mCreatureController.Triad > 0 {
ChangeEmotion("sad","up",0.5,5  - ((4 / 20) * mCreatureController.HornsPulled))
}

if mCreatureController.Resistance > 0 {
ChangeEmotion("anger","up",0.3,5  - ((4 / 20) * mCreatureController.HornsPulled))
}

ChangeEmotion("fear","up",0.5,5 - ((4 / 20) * mCreatureController.HornsPulled))
ChangeEmotion("shame","up",0.5,5  - ((4 / 20) * mCreatureController.HornsPulled))
ChangeEmotion("happy","down",0.3,5  - ((4 / 20) * mCreatureController.HornsPulled))

with mCreatureController {
BaseLust += 5 - ((4 / 20) * mCreatureController.HornsPulled)
BaseSubIntent -= 0.05 * mPlotController.ISModifier
BaseTrust -= 5 - ((4 / 20) * mCreatureController.HornsPulled)
CloseToAnne -= 5 - ((4 / 20) * mCreatureController.HornsPulled)
BaseAlive -= 0.05 
BasePain += 5 - ((4 / 20) * mCreatureController.HornsPulled)
BaseResistance -= 5 - ((4 / 20) * mCreatureController.HornsPulled)
}
}
}
}

Pulling = true
alarm[1] = 60


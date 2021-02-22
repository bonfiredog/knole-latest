///PullHornInitial()


if DrivesAreOn() {
if AmountForward(80) and IsAlive() {

ChanceToWake(50)
StopYawnBehaviour()
if Chance(mCreatureController.Pain) {
TwitchRun(irandom_range(4,10))
}
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",30,100 - mBehavioursDeliberative.PercentForward)
}

//In Ritual

if IsInRitual() {
if ChanceToRitualReact() {
StartNumberSniffsBehaviour(1)
}
if ChanceToRitualReact() {
StartSwallowBehaviour(10,30)
}
if ChanceToRitualReact() {
ChangeEmotion("fear","up",0.5,5)
ChangeEmotion("happy","up",0.5,10)
}
with mCreatureController {
BaseLust += 3
BaseResistance -= 3
CloseToAnne += 3
BaseAlive -= 0.03
BaseStress += 3
BasePain += 3
}

if mDriveCollectionMaster.PullHornTimer <= 0 or mDriveCollectionMaster.NoReactionTimer > 3000 {
if Chance(60) {
HoldBreathFor(irandom_range(70,100))
}
if ChanceToRitualReact() {
LittleJump()
}
ChangeEmotion("surprise","up",1.3,irandom_range(40,60))
mDriveCollectionMaster.PullHornTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(Tiredness,2000) - NumberISMod(Trust,1000) - (2000 * mCreatureController.Triad)
}

//Not In Ritual

} else {
if Chance(50 - ((20 / 20) * mCreatureController.HornsPulled)) {
StartNumberSniffsBehaviour(1)
}
if Chance(50 - ((20 / 20) * mCreatureController.HornsPulled)) {
RandomVoc(0.8)
}
if Chance(50 - ((20 / 20) * mCreatureController.HornsPulled)) {
StartSwallowBehaviour(10,30)
}
if mDriveCollectionMaster.PullHornTimer <= 0 or mDriveCollectionMaster.NoReactionTimer > 3000 {
if Chance(60 - ((20 / 20) * mCreatureController.HornsPulled) ) {
HoldBreathFor(irandom_range(70,100))
}
if Chance(80  - ((20 / 20) * mCreatureController.HornsPulled)) {
LittleJump()
}
if Chance(70  - ((20 / 20) * mCreatureController.HornsPulled)) {
EmotionRequest()
}
ChangeEmotion("surprise","up",1.3,irandom_range(40,60)  - ((20 / 20) * mCreatureController.HornsPulled))
mDriveCollectionMaster.PullHornTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(Tiredness,2000) - NumberISMod(Trust,1000) - (2000 * mCreatureController.Triad)
}

if mCreatureController.Triad > 0 {
ChangeEmotion("sad","up",0.5,3  - ((1 / 20) * mCreatureController.HornsPulled))
}

if mCreatureController.Resistance > 0 {
ChangeEmotion("anger","up",0.3,4  - ((2 / 20) * mCreatureController.HornsPulled))
}

ChangeEmotion("fear","up",0.5,3 - ((1 / 20) * mCreatureController.HornsPulled))
ChangeEmotion("shame","up",0.5,3  - ((1 / 20) * mCreatureController.HornsPulled))
ChangeEmotion("happy","down",0.3,5  - ((2 / 20) * mCreatureController.HornsPulled))

with mCreatureController {
BaseLust += 3 - ((1 / 20) * mCreatureController.HornsPulled)
BaseSubIntent -= 0.03
BaseTrust -= 3 - ((1 / 20) * mCreatureController.HornsPulled)
CloseToAnne -= 3 - ((1 / 20) * mCreatureController.HornsPulled)
BaseAlive -= 0.03
BasePain += 5 - ((1 / 20) * mCreatureController.HornsPulled)
BaseResistance -= 3 - ((1 / 20) * mCreatureController.HornsPulled)
}
Pulling = true
}
}
}




///EarPullInitial()

if AmountForward(80) and IsAlive() {

if mDriveCollectionMaster.RealReactionsOn = true {

ChanceToWake(50)
StopYawnBehaviour()
ReduceTabooLayerHealth(0.5)
if Chance(mCreatureController.Pain) {
TwitchRun(irandom_range(1,2) + (8))
}

if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",30,100 - mBehavioursDeliberative.PercentForward)
}

if mCreatureController.EarsPulled < 1 {
if IsInRitual() {
if ChanceToRitualReact() {
StartNumberSniffsBehaviour(1)
}
if ChanceToRitualReact() {
StartSwallowBehaviour(10,30)
}
if ChanceToRitualReact() {
ChangeEmotion("fear","up",0.5,5)
} 
mCreatureController.BaseResistance -= 2  * mPlotController.ISModifier
mCreatureController.CloseToAnne += 1  * mPlotController.ISModifier
mCreatureController.BaseStress += 2  * mPlotController.ISModifier
mCreatureController.BasePain += 2  * mPlotController.ISModifier

if mDriveCollectionMaster.EarPullTimer <= 0 or mDriveCollectionMaster.NoReactionTimer > 3000 {
if Chance(60 
* ReactChance()) {
HoldBreathFor(irandom_range(50,70) - (40 * mCreatureController.EarsPulled))
}
if ChanceToRitualReact() 
* ReactChance() {
LittleJump()
}
ChangeEmotion("surprise","up",1.3,irandom_range(50,70) - (40 * mCreatureController.EarsPulled))
mDriveCollectionMaster.EarPullTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(mCreatureController.Tiredness,2000) - NumberISMod(mCreatureController.Trust,1000) - (2000 * mCreatureController.Triad)
}

} else {
if Chance(70 - (30 * mCreatureController.EarsPulled)) {
StartNumberSniffsBehaviour(1)
}
if Chance(50 - (30 * mCreatureController.EarsPulled)) {
RandomVoc(0.8)
}
if Chance(50 - (20 * mCreatureController.EarsPulled)) {
StartSwallowBehaviour(10,30)
}
if mDriveCollectionMaster.EarPullTimer <= 0 or mDriveCollectionMaster.NoInteractionTimer > 3000 {
if Chance(20 + (50 * mCreatureController.EarsPulled) ) {
HoldBreathFor(irandom_range(70,100))
}
if Chance(80  - (60 * mCreatureController.EarsPulled)) {
LittleJump()
}
if Chance(20  + (50 * mCreatureController.EarsPulled)) {
EmotionRequest()
}
ChangeEmotion("surprise","up",1.3,irandom_range(70,90)  - (60 * mCreatureController.EarsPulled))
mDriveCollectionMaster.EarPullTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(mCreatureController.Tiredness,2000) - NumberISMod(mCreatureController.Trust,1000) - (2000 * mCreatureController.Triad)
}
if mCreatureController.Triad > 0 {
ChangeEmotion("sad","up",0.5,1  + (4 * mCreatureController.EarsPulled))
}
if mCreatureController.Resistance > 0 {
ChangeEmotion("anger","up",0.3,1  + (4 * mCreatureController.EarsPulled))
}
ChangeEmotion("fear","up",0.5,1 - (4  * mCreatureController.EarsPulled))
ChangeEmotion("shame","up",0.5,1  - (4  * mCreatureController.EarsPulled))
ChangeEmotion("happy","down",0.3,2  - (5 * mCreatureController.EarsPulled))
with mCreatureController {
BaseSubIntent -= 0.03 * mPlotController.ISModifier
BaseTrust += 3 - (1 * mCreatureController.EarsPulled)
CloseToAnne -= 3 - (1 * mCreatureController.EarsPulled)
BaseAlive -= 0.03
BasePain += 5 - (1 * mCreatureController.EarsPulled)
BaseResistance -= 3 - (1 * mCreatureController.EarsPulled)
}
}
} else {
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
ChangeEmotion("fear","up",0.5,5)
}
mCreatureController.BaseResistance-=2  * mPlotController.ISModifier
mCreatureController.CloseToAnne+=1  * mPlotController.ISModifier
mCreatureController.BaseStress+=2  * mPlotController.ISModifier
mCreatureController.BasePain+=2  * mPlotController.ISModifier

if mDriveCollectionMaster.EarPullTimer <= 0 or mDriveCollectionMaster.NoReactionTimer > 3000 {
if Chance(60 
* ReactChance()) {
HoldBreathFor(irandom_range(50,70) - (40 * mCreatureController.EarsPulled))
}
if ChanceToRitualReact() {
LittleJump()
}
ChangeEmotion("surprise","up",1.3,irandom_range(50,70) - (40 * mCreatureController.EarsPulled))
mDriveCollectionMaster.EarPullTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(mCreatureController.Tiredness,2000) - NumberISMod(mCreatureController.Trust,1000) - (2000 * mCreatureController.Triad)
}

} else {
if Chance(70 - (30 * mCreatureController.EarsPulled)) {
StartNumberSniffsBehaviour(1)
}
if Chance(50 - (30 * mCreatureController.EarsPulled)) {
RandomVoc(0.8)
}
if Chance(50 - (20 * mCreatureController.EarsPulled)) {
StartSwallowBehaviour(10,30)
}
if mDriveCollectionMaster.EarPullTimer <= 0 or mDriveCollectionMaster.NoInteractionTimer > 3000 {
if Chance(20 + (50 * mCreatureController.EarsPulled) ) {
HoldBreathFor(irandom_range(70,100))
}
if Chance(80  - (60 * mCreatureController.EarsPulled)) {
LittleJump()
}
if Chance(20  + (50 * mCreatureController.EarsPulled)) {
EmotionRequest()
}
ChangeEmotion("surprise","up",1.3,irandom_range(70,90)  - (60 * mCreatureController.EarsPulled))
mDriveCollectionMaster.EarPullTimer = irandom_range(8000,10000) + LowAliveMod(2000) - NumberISMod(mCreatureController.Tiredness,2000) - NumberISMod(mCreatureController.Trust,1000) - (2000 * mCreatureController.Triad)
}
if mCreatureController.Triad > 0 {
ChangeEmotion("sad","up",0.5,1  + (4 * mCreatureController.EarsPulled))
}
if mCreatureController.Resistance > 0 {
ChangeEmotion("anger","up",0.3,1  + (4 * mCreatureController.EarsPulled))
}
ChangeEmotion("fear","up",0.5,1 - (4  * mCreatureController.EarsPulled))
ChangeEmotion("shame","up",0.5,1  - (4  * mCreatureController.EarsPulled))
ChangeEmotion("happy","down",0.3,2  - (5 * mCreatureController.EarsPulled))
with mCreatureController {
BaseLust+=3 - (1 * mCreatureController.EarsPulled)
BaseSubIntent-=0.03 * mPlotController.ISModifier
BaseTrust-=3 - (1 * mCreatureController.EarsPulled)
CloseToAnne+=3 - (1 * mCreatureController.EarsPulled)
BaseAlive-=0.03
BasePain+=5 - (1 * mCreatureController.EarsPulled)
BaseResistance-=3 - (1 * mCreatureController.EarsPulled)
}
}
}
}
mDriveCollectionMaster.alarm[1] = 60
Pulling = true
}

///RipOutHornReactions()

if mDriveCollectionMaster.RealReactionsOn = true {


if IsAlive() and AmountForward(60) {
HornMod = mCreatureController.HornsPulled
HornMod = clamp(HornMod,0,20)

ChanceToWake(100)

//In Ritual
if IsInRitual() {
with mCreatureController {
BaseResistance -= 20  * mPlotController.ISModifier
BaseStress += 20  * mPlotController.ISModifier
BasePain += 20  * mPlotController.ISModifier
BaseTiredness += 5  * mPlotController.ISModifier
BaseAlive -= 2  * mPlotController.ISModifier
CloseToAnne += 20  * mPlotController.ISModifier
BaseLust -= 20 * mPlotController.ISModifier
}

ChangeEmotion("happy","up",3,20 + NumberISMod(mCreatureController.Pain,30) - HornModded(40))
mDriveCollectionMaster.BaseBreathRate += 0.2
if Chance(50 * ReactChance()) {
TwitchRun(irandom_range(5,10))
}
if ChanceToRitualReact() * ReactChance() {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(3,10))
}
if ChanceToRitualReact() * ReactChance() {
RandomVoc(0.03)
}
if ChanceToRitualReact() * ReactChance() {
EyeSquint(irandom_range(2,3),true,irandom_range(40,200))
}
StopYawnBehaviour()
ShiverChance(15 * ReactChance())

//Not In Ritual

} else {
with mCreatureController {
BaseResistance -= 20 * mPlotController.ISModifier
BaseStress += 20 * mPlotController.ISModifier
BasePain += 30 * mPlotController.ISModifier
BaseTiredness += 20 * mPlotController.ISModifier
BaseAlive -= 2 * mPlotController.ISModifier
CloseToAnne -= 20 * mPlotController.ISModifier
BaseTrust -= 20 * mPlotController.ISModifier
BaseSubIntent -= 0.5 * mPlotController.ISModifier
BaseLust -= 20 * mPlotController.ISModifier
}

if mCreatureController.Triad > 0 {
ChangeEmotion("surprise","up",1,30 - HornModded(20))
ChangeEmotion("shame","up",0.1,30 - HornModded(20))
}

ChangeEmotion("happy","down",1,25)
ChangeEmotion("anger","down",0.2,15)
ChangeEmotion("fear","up",0.6,25)
ChangeEmotion("sad","up",0.7,15)
mDriveCollectionMaster.BaseBreathRate += 0.2
if Chance(50 * ReactChance()) {
TwitchRun(irandom_range(5,10))
}
if Chance((50 - HornModded(20)) * ReactChance()) {
EyeSquint(irandom_range(2,3),true,irandom_range(40,200))
}
if Chance((50 + HornModded(20)) * ReactChance()) {
RandomVoc(0.9)
}
if Chance(50 * ReactChance()) {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(10,25))
}
StopYawnBehaviour()
if Chance(50 * ReactChance()) {
ShiftAway(x,y,irandom_range(30,40),random(360))
}
if Chance(50 * ReactChance()) {
RandomShake()
}
}
}

mDriveCollectionMaster.alarm[1] = 60
WinkRun(irandom_range(5,10))
}


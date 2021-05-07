///RipOutEarReactions()
if IsAlive() and AmountForward(60) {
if mDriveCollectionMaster.RealReactionsOn = true {
ChanceToWake(100)
ReduceTabooLayerHealth(3)
if IsInRitual() {
with mCreatureController {
BaseStress += 70
mCreatureController.BasePain += 50 * mDriveCollectionMaster.ISModifier
BaseTiredness += 25  * mPlotController.ISModifier
BaseAlive-=10
ChangeEmotion("anger","down",0.2,70)
ChangeEmotion("fear","up",0.6,70)
BaseLust-=50  * mPlotController.ISModifier
ChangeEmotion("sad","up",0.7,45)
ShiverChance(25)
if Chance(50) {
RandomShake()
}
if Chance(80) {
TwitchRun(irandom_range(5,10))
}
if Chance(40) {WinkRun(irandom_range(2,6))}
if Chance(80) {
EyeSquint(irandom_range(2,3),true,irandom_range(40,200))
}
LittleJump()
}
} else {
if mCreatureController.LERipped = false and mCreatureController.RERipped = false {
ChangeEmotion("surprise","up",1,100)
} else {
ChangeEmotion("surprise","up",1,50)
}
with mCreatureController {
BaseResistance-=70 * mPlotController.ISModifier
BaseStress+=70 * mPlotController.ISModifier
BasePain+=50 * mPlotController.ISModifier
BaseTiredness+=25 * mPlotController.ISModifier
BaseAlive-=10 * mPlotController.ISModifier
CloseToAnne-=30 * mPlotController.ISModifier
ChangeEmotion("shame","up",0.1,50)
BaseTrust-=60 * mPlotController.ISModifier
BaseSubIntent-=1 * mPlotController.ISModifier
ChangeEmotion("happy","down",1,80)
ChangeEmotion("anger","down",0.2,70)
ChangeEmotion("fear","up",0.6,70)
BaseLust-=50  * mPlotController.ISModifier
ChangeEmotion("sad","up",0.7,45)
}
mDriveCollectionMaster.BaseBreathRate += 0.2

if Chance(80) {
TwitchRun(irandom_range(5,10))
}
if Chance(80) {
EyeSquint(irandom_range(2,3),true,irandom_range(40,200))
}
MoveBackForwardUnCapped("retreat",irandom_range(5,20),irandom_range(30,65))
StopYawnBehaviour()
if Chance(80) {
ShiftAway(x,y,irandom_range(30,40),random(360))
}
ShiverChance(25)
if Chance(50) {
RandomShake()
}
}
}
mDriveCollectionMaster.alarm[1] = 60
}

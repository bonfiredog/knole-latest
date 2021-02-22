///RipOutEarReactions()
if IsAlive() and AmountForward(60) {
if DrivesAreOn() {
ChanceToWake(100)

if IsInRitual() {
with mCreatureController {
BaseStress += 70
mCreatureController.BasePain += 50
BaseTiredness += 25
BaseAlive-=10
ChangeEmotion("anger","down",0.2,70)
ChangeEmotion("fear","up",0.6,70)
BaseLust-=50
ChangeEmotion("sad","up",0.7,45)
ShiverChance(25)
if Chance(50) {
RandomShake()
}
if Chance(80) {
TwitchRun(irandom_range(5,10))
}
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
BaseResistance-=70
BaseStress+=70
BasePain+=50
BaseTiredness+=25
BaseAlive-=10
CloseToAnne-=30
ChangeEmotion("shame","up",0.1,50)
BaseTrust-=60
BaseSubIntent-=1
ChangeEmotion("happy","down",1,80)
ChangeEmotion("anger","down",0.2,70)
ChangeEmotion("fear","up",0.6,70)
BaseLust-=50
ChangeEmotion("sad","up",0.7,45)
}
mDriveCollectionMaster.BaseBreathRate += 0.7

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
}

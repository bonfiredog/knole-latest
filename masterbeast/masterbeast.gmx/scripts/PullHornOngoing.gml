///PullHornOngoing()

if DrivesAreOn() {
ChanceToWake(0.05)

if IsInRitual() and IsAlive() {

with mCreatureController {
BaseResistance -= 0.05
BaseStress += 0.05
BasePain += 0.05
BaseAlive -= 0.0003
CloseToAnne += 0.05
BaseLust += 0.05
}

ChangeEmotionStep("happy","up",0.005)
ChangeEmotionStep("fear","up",0.00005)

mDriveCollectionMaster.BaseBreathRate += 0.0004
if ChanceToRitualReact / 200 {
RandomVoc(0.2)
}
if ChanceToRitualReact / 150 {
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
}
ShiverChance(0.02)
if ChanceToRitualReact / 100 {
TwitchRun(irandom_range(2,5))
}
if ChanceToRitualReact / 100 {
NodUpDown(irandom_range(2,4))
}
} else {
with mCreatureController {
BaseResistance -= 0.05
BaseStress += 0.05
BasePain += 0.05
BaseAlive -= 0.0003
CloseToAnne -= 0.05
BaseSubIntent -= 0.0005
BaseTrust -= 0.05
BaseLust -= 0.05
}
ChangeEmotionStep("happy","down",0.005)
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",0.005)
} else {
ChangeEmotionStep("fear","up",0.005)
}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("sad","up",0.005)
ChangeEmotionStep("shame","up",0.005)
}

mDriveCollectionMaster.BaseBreathRate += 0.0004
if Chance(mCreatureController.Pain / 100) {
RandomVoc(0.9)
}
if Chance(mCreatureController.Pain / 100) and RetreatMod <= 0 {
MoveBackForward("retreat",10,irandom_range(4,8))
RetreatMod = irandom_range(5,10)
}
if Chance(mCreatureController.Pain / 100) {
RandomShake()
}
if Chance(mCreatureController.Pain / 100) {
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
}
ShiverChance(0.02)
if Chance(mCreatureController.Pain / 100) {
TwitchRun(irandom_range(2,5))
}

}

if RetreatMod > 1 {
RetreatMod -= 1
} else {
MoveBackForward("comeforward",10,100 - mBehavioursDeliberative.PercentForward)
RetreatMod = 0
}
}


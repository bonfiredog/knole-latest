///EarPullOngoing()
if mDriveCollectionMaster.RealReactionsOn = true {
if mCreatureController.EarsPulled < 1 {
if IsInRitual() {
mCreatureController.BaseResistance-=0.5 + ((0.5 / 180) * (180 - PullTimer))
mCreatureController.BaseStress+=0.5 + ((0.5 / 180) * (180 - PullTimer))
mCreatureController.BasePain+=0.5 + ((0.5 / 180) * (180 - PullTimer))
mCreatureController.BaseAlive-=0.00003+ ((0.005 / 180) * (180 - PullTimer))
mCreatureController.CloseToAnne+=0.005+ ((0.005 / 180) * (180 - PullTimer))
ChangeEmotionStep("happy","up",0.0005+ ((0.005 / 180) * (180 - PullTimer))
)
ChangeEmotionStep("fear","up",0.5+ ((0.5 / 180) * (180 - PullTimer))
)
mCreatureController.BaseLust+=0.005 + ((0.005 / 180) * (180 - PullTimer))
mDriveCollectionMaster.BaseBreathRate += 0.000004 + ((0.005 / 180) * (180 - PullTimer))
if Chance(mCreatureController.Pain / 1000) - ((1000 / 180) * (180 - PullTimer)) {WinkRun(irandom_range(2,6))}

if ChanceToRitualReact() * ReactChance()
{
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
}
ShiverChance(0.02)

} else {
ChanceToWake(0.05)
mCreatureController.BasePain += 0.9 * mPlotController.ISModifier
mCreatureController.BaseStress += 0.9 * mPlotController.ISModifier
ChangeEmotionStep("fear","up",0.9)
mCreatureController.BaseResistance -= 0.9 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.04 * mPlotController.ISModifier
VocaliseChance(1 + (5 / 100 * PullTimer))
mCreatureController.BaseResistance-=0.005 + ((0.005 / 180) * (180 - PullTimer))
mCreatureController.BaseStress+=0.005 + ((0.005 / 180) * (180 - PullTimer))
mCreatureController.BasePain+=0.005 + ((0.005 / 180) * (180 - PullTimer))
mCreatureController.BaseAlive-=0.003 + ((0.005 / 180) * (180 - PullTimer))
mCreatureController.CloseToAnne+=0.005 + ((0.005 / 180) * (180 - PullTimer))
mCreatureController.BaseSubIntent-=0.005 + ((0.005 / 180) * (180 - PullTimer))
mCreatureController.BaseTrust-=0.005 + ((0.005 / 180) * (180 - PullTimer))
}
ChangeEmotionStep("happy","down",0.0005 + ((0.005 / 180) * (180 - PullTimer)))
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",0.0005 + ((0.005 / 180) * (180 - PullTimer)))
} else {
ChangeEmotionStep("fear","up",0.0005 + ((0.005 / 180) * (180 - PullTimer)))
}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("sad","up",0.0005 + ((0.005 / 180) * (180 - PullTimer)))
ChangeEmotionStep("shame","up",0.0005 + ((0.005 / 180) * (180 - PullTimer)))
}
mCreatureController.BaseLust+=0.005 + ((0.005 / 180) * (180 - PullTimer))
mDriveCollectionMaster.BaseBreathRate += 0.000004 + ((0.00005 / 180) * (180 - PullTimer))
if Chance(mCreatureController.Pain / 1000) - ((1000 / 180) * (180 - PullTimer)) {
RandomShake()
}
if Chance(mCreatureController.Pain / 1000) - ((1000 / 180) * (180 - PullTimer)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(30,50),random(360))
}
if Chance(mCreatureController.Pain / 1000) - ((1000 / 180) * (180 - PullTimer)) {
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
}
ShiverChance(0.02)
if Chance(mCreatureController.Pain / 1000) - ((1000 / 180) * (180 - PullTimer)) {
TwitchRun(irandom_range(2,5))
}

} else {
//Second Ear
mCreatureController.BaseResistance-=0.05 + ((0.05 / 180) * (180 - PullTimer))
mCreatureController.BaseStress+=0.05 + ((0.05 / 180) * (180 - PullTimer))
mCreatureController.BasePain+=0.05 + ((0.05 / 180) * (180 - PullTimer))
mCreatureController.BaseAlive-=0.0003 + ((0.05 / 180) * (180 - PullTimer))
mCreatureController.CloseToAnne+=0.05 + ((0.05 / 180) * (180 - PullTimer))
mCreatureController.BaseSubIntent-=0.0005 + ((0.05 / 180) * (180 - PullTimer))
mCreatureController.BaseTrust-=0.05 + ((0.05 / 180) * (180 - PullTimer))
ChangeEmotionStep("happy","down",0.005 + ((0.05 / 180) * (180 - PullTimer)))
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",0.005 + ((0.05 / 180) * (180 - PullTimer)))
} else {
ChangeEmotionStep("fear","up",0.005 + ((0.05 / 180) * (180 - PullTimer)))
}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("sad","up",0.005 + ((0.05 / 180) * (180 - PullTimer)))
ChangeEmotionStep("shame","up",0.005 + ((0.05 / 180) * (180 - PullTimer)))
}
mCreatureController.BaseLust+=0.005 + ((0.05 / 180) * (180 - PullTimer))

mDriveCollectionMaster.BaseBreathRate += 0.000004 + ((0.000005 / 180) * (180 - PullTimer))
if Chance(mCreatureController.Pain / 100) - ((100 / 180) * (180 - PullTimer)) {
RandomShake()
}
if Chance(mCreatureController.Pain / 100) - ((000 / 180) * (180 - PullTimer)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(30,50),random(360))
}
if Chance(mCreatureController.Pain / 100) - ((100 / 180) * (180 - PullTimer)) {
EyeSquint(irandom_range(0,3),true,irandom_range(80,200))
}
ShiverChance(0.02)
if Chance(mCreatureController.Pain / 100) - ((100 / 180) * (180 - PullTimer)) {
TwitchRun(irandom_range(2,5))
}
}
}

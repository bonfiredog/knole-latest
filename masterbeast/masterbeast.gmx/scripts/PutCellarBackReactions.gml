///PutCellarBackReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() {
ChanceToWake(30)
if IsAsleep() = false {
TwitchRun(irandom_range(5,20))
if mDriveCollectionMaster.CellarBackTimer <= 0 {
mCreatureController.Stress += 15
ChangeEmotion("surprise","up",1,40 + (20 * mCreatureController.Triad))
if Chance(60 * ReactChance()){StartNumberSniffsBehaviour(1)}
mDriveCollectionMaster.CellarBackTimer = irandom_range(1000,2000) + NumberISMod(mCreatureController.Resistance,500) + NumberISMod(mCreatureController.Stress,500) + NumberISMod(mCreatureController.Tiredness,500) - NumberISMod(mCreatureController.Trust,1000)
}


if Chance(60 * ReactChance()){EyeSquint(irandom_range(0,2),true,irandom_range(20,45))}
mCreatureController.BasePain += 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.1 * mDriveCollectionMaster.ISModifier
if Chance(60 * ReactChance()){HoldBreathFor(irandom_range(30,60))}
mDriveCollectionMaster.BaseBreathRate += 0.005
if Chance(60 * ReactChance()) {
RandomShake()
}

if IsInRitual() {
mCreatureController.CloseToAnne -= 5 * mPlotController.ISModifier
} else {
mCreatureController.BaseResistance -= 5 * mPlotController.ISModifier
ChangeEmotion("shame","up",0.2,10)
ChangeEmotion("happy","down",0.2,15)
mCreatureController.BaseTrust -= 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.07 * mPlotController.ISModifier
if mCreatureController.Triad > 0 {
ChangeEmotion("sad","up",0.2,15)
ChangeEmotion("anger","up",0.2,15)
} else {
ChangeEmotion("fear","up",0.2,15)
}
}
}
}
mDriveCollectionMaster.alarm[1] = 60
}

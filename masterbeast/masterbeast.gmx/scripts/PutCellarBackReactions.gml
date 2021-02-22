///PutCellarBackReactions()

if DrivesAreOn() {
if IsAlive() {
ChanceToWake(30)
if IsAsleep() = false {
if mDriveCollectionMaster.CellarBackTimer <= 0 {
mCreatureController.Stress += 6
ChangeEmotion("surprise","up",1,30 + (20 * mCreatureController.Triad))
TwitchRun(irandom_range(5,20))
if Chance(35){StartNumberSniffsBehaviour(1)}
mDriveCollectionMaster.CellarBackTimer = irandom_range(1000,2000) + NumberISMod(Resistance,500) + NumberISMod(Stress,500) + NumberISMod(Tiredness,500) - NumberISMod(Trust,1000)
}


if Chance(40){EyeSquint(irandom_range(0,2),true,irandom_range(20,45))}
mCreatureController.BasePain += 10
mCreatureController.BaseAlive -= 0.04
if Chance(35){HoldBreathFor(irandom_range(30,60))}
mDriveCollectionMaster.BaseBreathRate += 0.15
ShiverChance(30)

if IsInRitual() {
mCreatureController.CloseToAnne -= 3
} else {
mCreatureController.BaseResistance -= 4
ChangeEmotion("shame","up",0.2,20)
ChangeEmotion("happy","down",0.2,20)
mCreatureController.BaseTrust -= 3
mCreatureController.BaseSubIntent -= 0.03
if mCreatureController.Triad > 0 {
ChangeEmotion("sad","up",0.2,20)
ChangeEmotion("anger","up",0.2,10)
} else {
ChangeEmotion("fear","up",0.2,20)
}
}
}
}
}

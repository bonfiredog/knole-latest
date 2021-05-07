///ChanceToWake(amount)

if IsInRitual() {
AmountToWake = argument0 / 2
} else {
AmountToWake = argument0
}


TwitchRun(irandom_range(5,10))
if Chance(40){RandomShake()}
if Chance(25){StartSwallowBehaviour(60,40)}
if Chance(40){StartNumberSniffsBehaviour(irandom_range(1,2))}

if mBehavioursReactive.Sleeping = true {
mDriveCollectionMaster.ChanceToWakeUp += AmountToWake
if mDriveCollectionMaster.ChanceToWakeUp >= 100 {
StopSleepBehaviour(irandom_range(0,3),false)
}
}

//Stop Dozing
if mDriveCollectionMaster.Dozing = true {
mDriveCollectionMaster.DozeThreshTimer = mDriveCollectionMaster.DozeThreshold - 20
}


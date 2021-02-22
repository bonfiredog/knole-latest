///ChanceToWake(amount)

if mBehavioursReactive.Sleeping = true {
mDriveCollectionMaster.ChanceToWakeUp += argument0
if mDriveCollectionMaster.ChanceToWakeUp >= 100 {
StopSleepBehaviour(irandom_range(0,3),false)
}
}

///StartSleepBehaviour(blinks)

with mBehavioursReactive {
WriteToLog("Fell asleep.")
SleepingActive = true
SuddenWaking = false
Blinks = argument0
Sleeping = false
DreamCountdown = 0
Dreaming = false
WakingUp = false
mDriveCollectionMaster.ChanceToWakeUp = 0
SleepDroopY = irandom_range(700,900)
}

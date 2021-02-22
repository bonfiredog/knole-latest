///StartSneezeBehaviour(speedin,hold,speedout,falsealarm)

with mBehavioursReactive {
if SneezeActive = false {
WriteToLog("Started sneezing.")
mDriveCollectionMaster.CurrentlyBlinking = false
mDriveCollectionMaster.CurrentlyWinking = false
mDriveCollectionMaster.CurrentlySquinting = false
SneezeActive = true
SneezeSpeedIn = argument0
SneezeHold = argument1
SneezeSpeedOut = argument2
SneezePos = "in"
SneezeStop = argument3
PauseBreathingBehaviour()
}
}

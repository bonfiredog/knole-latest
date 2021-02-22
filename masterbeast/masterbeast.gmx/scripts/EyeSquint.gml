///EyeSquint(level,timed,time)

with mBehavioursReactive {
if mDriveCollectionMaster.CurrentlySquinting = true { 
WriteToLog("Started squinting.")
SquintingActive = true
SquintingTimed = argument1
SquintTime = argument2
DesiredSquintLevel = argument0
}
}

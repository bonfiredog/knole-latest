///StartOpenMouthBehaviour(rate,max)

with mBehavioursReactive {
WriteToLog("Opening mouth.")
OpenMouthActive = true
OMTarget = argument1
OMRate = argument0
mDriveCollectionMaster.CurrentlyBreathing = false
}

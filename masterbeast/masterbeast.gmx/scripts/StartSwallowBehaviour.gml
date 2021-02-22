///StartSwallowBehaviour(rate,hold)

with mBehavioursReactive {
WriteToLog("Swallowed.")
SwallowingActive = true
SwallowRate = argument0
SwallowHolding = false
SwallowHold = argument1
mDriveCollectionMaster.CurrentlyBreathing = false
}

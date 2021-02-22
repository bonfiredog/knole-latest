///StartWinkBehaviour(which eye?"left""right")

with (mBehavioursReactive) {
if mDriveCollectionMaster.CurrentlyWinking = true and IsInRitual() = false {
WriteToLog("Started a wink.")
WinkingActive = true
WinkIn = false
WinkOut = false
StartWinkIn = false
StartWinkOut = false
WhichEyeWink = argument0
}
}

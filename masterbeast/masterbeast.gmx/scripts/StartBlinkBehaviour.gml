///StartBlinkBehaviour

with (mBehavioursReactive) {
if mDriveCollectionMaster.CurrentlyBlinking = true and mDriveCollectionMaster.CreatureDied = false and IsInRitual() = false {
WriteToLog("Started a blink.")
BlinkingActive = true
BlinkIn = false
BlinkOut = false
StartBlinkIn = false
StartBlinkOut = false
}
}

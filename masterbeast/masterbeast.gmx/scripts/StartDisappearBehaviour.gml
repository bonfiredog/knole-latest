///StartDisappearBehaviour
with mBehavioursDeliberative {
WriteToLog("Started to disappear.")
if PercentForward >= 80 {
DisappearingActive = true
StartDSneeze = false
StartDisappearing = false
}
}


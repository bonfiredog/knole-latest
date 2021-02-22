///StartCloseEyeBehaviour(WhichEye,speed)

with mBehavioursReactive {
WriteToLog("Closing eyes.")
CloseEyesActive = true
WhichEyeClose = argument0
CloseSpeed = argument1
}

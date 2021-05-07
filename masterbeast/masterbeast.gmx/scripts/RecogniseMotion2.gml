///RecogniseMotion2()

//Check to see if there is motion, and set the timer so that the request is not made 
//the next step as well.
if file_exists("new motion2.txt") {
MotionDetected2 = true
MotionCounter2 = 60
mCreatureController.TimeSinceLastMotion = 0
mDriveCollectionMaster.NoInteractionTimer = 0
file_delete("new motion2.txt")
}

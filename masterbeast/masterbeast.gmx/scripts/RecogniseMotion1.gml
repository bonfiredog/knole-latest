///RecogniseMotion1()

//Check to see if there is motion, and set the timer so that the request is not made 
//the next step as well.

if file_exists(working_directory + "new motion.txt") {
MotionDetected1 = true
MotionCounter1 = 40
mCreatureController.TimeSinceLastMotion = 0
mDriveCollectionMaster.NoInteractionTimer = 0
file_delete("new motion.txt")
}


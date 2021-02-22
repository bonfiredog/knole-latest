///DetectFaces()

//If Eavesdrop has created the facedetect file, read how many faces there are.

PreviousFaces = Faces

if file_exists("facedetect.txt") {
FaceFile = file_text_open_read("facedetect.txt")
Faces = file_text_read_string(FaceFile)
file_text_close(FaceFile)
file_delete("facedetect.txt")
}



if Faces != PreviousFaces and FaceCooldown <= 0 {
mDriveCollectionMaster.NoInteractionTimer = 0

if DrivesAreOn() {
if mDriveCollectionMaster.InRitual = true {
if Chance(40) {EyeSquint(irandom_range(2,5),true,irandom_range(15,30))}
if Chance(30) {StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(40) {HoldBreathFor(irandom_range(20,30))}
ChangeEmotion("happy","up",0.3,3)
ChangeEmotion("anger","down",0.3,3)
mCreatureController.BaseLust += 3
MoveBackForward("comeforward",irandom_range(40,65) + ((30 / 100) * (100 - mCreatureController.Alive)),100 - mBehavioursDeliberative.PercentForward)
Choose = choose(-1,1,2)
if Choose = -1 {
StartEyebrowTwitchRightBehaviour()
StartEyebrowTwitchLeftBehaviour()
} else if Choose = 1 {
StartTwitchNoseSideBehaviour(irandom_range(10,40))
}
} else {
ChangeEmotion("surprise","up",0.1,25)
if Chance(40) {EyeSquint(irandom_range(2,5),true,irandom_range(15,30))}
if Chance(30) {StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(40) {HoldBreathFor(irandom_range(20,30))}
EmotionRequest()
if mCreatureController.Triad >= 0 {
mCreatureController.BaseResistance -= 3
mCreatureController.BaseLust += 3
if Chance(mCreatureController.Triad * 100) {MoveBackForward("comeforward",irandom_range(40,65) + ((30 / 100) * (100 - mCreatureController.Alive)),100 - mBehavioursDeliberative.PercentForward)}
ChangeEmotion("happy","up",0.1,3)
ChangeEmotion("anger","down",0.1,3)
} else {
ChangeEmotion("happy","down",0.1,3)
ChangeEmotion("anger","up",0.1,3)
ChangeEmotion("shame","up",0.1,3)
ChangeEmotion("fear","up",0.1,3)
mCreatureController.BaseStress += 1
mCreatureController.BaseResistance += 1
if Choose = -1 {
StartEyebrowTwitchRightBehaviour()
StartEyebrowTwitchLeftBehaviour()
} else if Choose = 1 {
StartTwitchNoseSideBehaviour(irandom_range(10,40))
}
mDriveCollectionMaster.BaseBreathRate += 0.3
if Chance(5) {RandomVoc(0.2)}
if Chance(25){LittleJump()}
if Chance(mCreatureController.Triad * 100) {MoveBackForward("retreat",irandom_range(10,20) + ((10 / 100) * (100 - mCreatureController.Alive)),irandom_range(5,20))}
}
}
}



FaceCooldown = irandom_range(500,700)
}


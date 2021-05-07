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

NewFaceReaction()

FaceCooldown = irandom_range(10000,15000)
}


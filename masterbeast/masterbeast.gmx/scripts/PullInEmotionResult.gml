///PullInEmotionResult()

//Pull in all the emotion data from the new emotion text file.

with mCreatureController {
if file_exists("new emotion.txt") {

EReac = choose(-1,1)
if EReac = 1 {StartEyebrowTwitchLeftBehaviour() StartEyebrowTwitchRightBehaviour() }
EReac = choose(-1,1)
if EReac = 1 {EyeSquint(4,true,40)  }
EReac = choose(-1,1)
if EReac = 1 {StartSniffBehaviour(15,15,1,1)}


EmotionResultFile = file_text_open_read("new emotion.txt")
WriteToLog("Emotion request succeeded!")
CurrentEmotionMain = file_text_read_string(EmotionResultFile)
file_text_readln(EmotionResultFile)
CurrentEmotionSecondary = file_text_read_string(EmotionResultFile)

if PreviousEmotion != CurrentEmotionMain {
ChangeEmotion("surprise","up",0.7,30)
}

if DrivesAreOn() {

switch CurrentEmotionMain {
case "Mainly angry, ":
if Triad >= 0 {
ChangeEmotion("shame","up",1,20)
ChangeEmotion("fear","up",1,25)
ChangeEmotion("sad","up",0.1,24)
mCreatureController.BaseResistance -= 5
mCreatureController.BaseStress += 5
mCreatureController.BaseSubIntent -= 0.05
} else {
ChangeEmotion("anger","up",2,25)
ChangeEmotion("fear","up",1,25)
mCreatureController.BaseResistance += 5
mCreatureController.BaseStress += 5
mCreatureController.BaseSubIntent -= 0.05
}
ChangeEmotion("happy","down",2,20)
mDriveCollectionMaster.BaseBreathRate += 0.2
mCreatureController.CloseToAnne -= 3
break;

case "Mainly contemptuous, ":
if Triad >= 0 {
ChangeEmotion("shame","up",2,25)
ChangeEmotion("fear","up",1,25)
ChangeEmotion("sad","up",1,20)
mCreatureController.BaseResistance -= 5
mCreatureController.BaseSubIntent -= 0.05
mCreatureController.BaseStress += 5
} else {
ChangeEmotion("anger","up",1,25)
ChangeEmotion("fear","up",2,25)
mCreatureController.BaseResistance += 5
mCreatureController.BaseSubIntent -= 0.05
mCreatureController.BaseStress += 5

}
ChangeEmotion("happy","down",1,25)
mDriveCollectionMaster.BaseBreathRate += 0.2
mCreatureController.CloseToAnne -= 3
break;

case "Mainly disgusted, ":
if Triad >= 0 {
ChangeEmotion("shame","up",1,25)
ChangeEmotion("fear","up",1,25)
ChangeEmotion("sad","up",1,25)
mCreatureController.BaseResistance -= 5
mCreatureController.BaseSubIntent -= 0.05
} else {
ChangeEmotion("anger","up",2,25)
ChangeEmotion("fear","up",1,25)
mCreatureController.BaseResistance += 5
mCreatureController.BaseSubIntent -= 0.05
}
ChangeEmotion("happy","down",1,25)
mDriveCollectionMaster.BaseBreathRate += 0.2
mCreatureController.CloseToAnne -= 3
break;

case "Mainly afraid, ":
if Triad >= 0 {
ChangeEmotion("sad","up",1,25)
ChangeEmotion("shame","up",1,25)
mCreatureController.BaseResistance -= 5
} else {
ChangeEmotion("anger","down",1,25)
ChangeEmotion("happy","up",1,25)
mCreatureController.BaseResistance += 5
}
ChangeEmotion("fear","down",1,25)
mDriveCollectionMaster.BaseBreathRate += 0.2
mCreatureController.CloseToAnne -= 3
break;

case "Mainly happy, ":
if Triad >= 0 {
ChangeEmotion("happy","up",1,25)
ChangeEmotion("sad","down",1,25)
ChangeEmotion("shame","down",1,25)
mCreatureController.BaseStress -= 5
mCreatureController.BaseSubIntent += 0.05
} else {
mCreatureController.BaseStress -= 5
ChangeEmotion("angry","down",1,25)
ChangeEmotion("sad","down",1,20)
mCreatureController.BaseSubIntent += 0.05
}
ChangeEmotion("fear","down",1,20)
mDriveCollectionMaster.BaseBreathRate -= 0.2
mCreatureController.CloseToAnne -= 3
break;

case "Mainly sad, ":
if Triad >= 0 {
ChangeEmotion("sad","up",1,20)
ChangeEmotion("happy","down",1,20)
ChangeEmotion("shame","up",1,25)
mCreatureController.BaseStress += 5
} else {
mCreatureController.BaseStress -= 5
ChangeEmotion("happy","up",1,20)
ChangeEmotion("shame","down",1,20)
}
mDriveCollectionMaster.BaseBreathRate -= 0.2
mCreatureController.CloseToAnne -= 3
break;
default:
mCreatureController.CloseToAnne += 3
break;
}
}

file_text_close(EmotionResultFile)
file_delete("new emotion.txt")
}
}

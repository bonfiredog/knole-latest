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

ReactToEmotions()

file_text_close(EmotionResultFile)
file_delete("new emotion.txt")
}
}

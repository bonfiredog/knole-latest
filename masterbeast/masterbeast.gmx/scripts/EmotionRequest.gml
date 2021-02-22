///EmotionRequest()

EmotionRequestFile = file_text_open_write("new gm emotion request.txt")
file_text_write_string(EmotionRequestFile, "New request!")
file_text_close(EmotionRequestFile)
WriteToLog("New Emotion request made.")
if file_exists("new gm emotion request.txt") {
mCreatureController.RequestMade = true
}

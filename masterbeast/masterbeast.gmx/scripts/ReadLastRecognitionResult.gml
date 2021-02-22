///ReadLastRecognitionResult()

RecogFile = file_text_open_read("latest speech results.txt")
global.LastRecognisedPhrase = global.LatestRecognisedPhrase
global.LatestRecognisedPhrase = file_text_read_string(RecogFile)
file_text_close(RecogFile)
LatestPhraseTimer = 60
WriteToLog("Heard: " + string(global.LastRecognisedPhrase))



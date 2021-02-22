///PullInColourResult()

if file_exists("new colour.txt") {
ColourResultFile = file_text_open_read("new colour.txt")
if file_text_read_string(ColourResultFile) = "Colour Error" {
ColourRequestStatus = "Failure"
WriteToLog("Colour request failed. Error in recognition.")
} else {
ColourRequestStatus = "Success"
CurrentColourForeground = file_text_read_string(ColourResultFile)
file_text_readln(ColourResultFile)
CurrentColourBackground = file_text_read_string(ColourResultFile)
file_text_readln(ColourResultFile)
CurrentColourAccentR = real(file_text_read_string(ColourResultFile))
file_text_readln(ColourResultFile)
CurrentColourAccentG = real(file_text_read_string(ColourResultFile))
file_text_readln(ColourResultFile)
CurrentColourAccentB = real(file_text_read_string(ColourResultFile))
}
file_text_close(EmotionResultFile)
file_delete("new colour.txt")
}

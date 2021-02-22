///PullInColourResult2()

//Open colour text file, read the colours, and close text file.

if file_exists("new colour2.txt") {
ColourResultFile = file_text_open_read("new colour2.txt")
if file_text_read_string(ColourResultFile) = "Colour Error" {
ColourRequestStatus = "Failure"
WriteToLog("Colour request failed. Error in recognition.")
} else {
ColourRequestStatus = "Success"
CurrentColourForeground2 = file_text_read_string(ColourResultFile)
file_text_readln(ColourResultFile)
CurrentColourBackground2 = file_text_read_string(ColourResultFile)
file_text_readln(ColourResultFile)
CurrentColourAccentR2 = real(file_text_read_string(ColourResultFile))
file_text_readln(ColourResultFile)
CurrentColourAccentG2 = real(file_text_read_string(ColourResultFile))
file_text_readln(ColourResultFile)
CurrentColourAccentB2 = real(file_text_read_string(ColourResultFile))
}
file_text_close(ColourResultFile)
file_delete("new colour2.txt")
}

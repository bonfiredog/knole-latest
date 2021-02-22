///PullInColourResult1()

//Open colour text file, read the colours, and close text file.

if file_exists("new colour.txt") {
ColourResultFile = file_text_open_read("new colour.txt")
if file_text_read_string(ColourResultFile) = "Colour Error" {
ColourRequestStatus = "Failure"
WriteToLog("Colour request failed. Error in recognition.")
} else {
ColourRequestStatus = "Success"
CurrentColourForeground1 = file_text_read_string(ColourResultFile)
file_text_readln(ColourResultFile)
CurrentColourBackground1 = file_text_read_string(ColourResultFile)
file_text_readln(ColourResultFile)
CurrentColourAccentR1 = real(file_text_read_string(ColourResultFile))
file_text_readln(ColourResultFile)
CurrentColourAccentG1 = real(file_text_read_string(ColourResultFile))
file_text_readln(ColourResultFile)
CurrentColourAccentB1 = real(file_text_read_string(ColourResultFile))
}
file_text_close(ColourResultFile)
file_delete("new colour.txt")
}

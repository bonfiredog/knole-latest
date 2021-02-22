///ColourRequest2()

//Create a text file for Eavesdrop to detect, requesting a new colour detection.

ColourRequestFile = file_text_open_write("new gm colour request2.txt")
WriteToLog("New colour request made.")
file_text_write_string(ColourRequestFile, "New request!")
file_text_close(ColourRequestFile)



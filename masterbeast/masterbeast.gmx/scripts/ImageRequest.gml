///ImageRequest()

VisionRequestFile = file_text_open_write("new gm vision request.txt")
WriteToLog("New vision request made.")
file_text_write_string(VisionRequestFile, "New request!")
file_text_close(VisionRequestFile)



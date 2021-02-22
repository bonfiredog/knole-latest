///ScreenshotRequest()

//Probably won't be used - ask Eavesdrop for a new screenshot.

ScreenshotRequestFile = file_text_open_write("new gm ss request.txt")
WriteToLog("New screenshot request.")
file_text_write_string(ScreenshotRequestFile, "New result!")
file_text_close(ScreenshotRequestFile)



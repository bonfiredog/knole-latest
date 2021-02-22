///OCRRequest()

//Create a text file for Eavesdrop to detect, requesting a new OCR recognition.

OCRRequestFile = file_text_open_write("new gm ocr request.txt")
WriteToLog("New OCR request made.")
file_text_write_string(OCRRequestFile, "New request!")
file_text_close(OCRRequestFile)



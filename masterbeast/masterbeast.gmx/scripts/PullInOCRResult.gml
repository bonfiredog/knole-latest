///PullInOCRResult()

//Check to see what the OCR result is, if one appears.

if file_exists("new ocr.txt") {
OCRResultFile = file_text_open_read("new ocr.txt")
OCRResult = file_text_read_string(OCRResultFile)

if OCRResult = "" {
WriteToLog("OCR request did not return any data.")
OCRResult = "none"
} else if OCRResult != "" {
WriteToLog("OCR request returned: result is '" + OCRResult + "'.")
}
file_delete("new ocr.txt")
}

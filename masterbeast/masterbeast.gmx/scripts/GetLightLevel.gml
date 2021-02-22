///GetLightLevel()

//Get the light level, as a real number, from the lightlevel file.

LLFile = file_text_open_read("lightlevel.txt")
LightLevel = file_text_read_string(LLFile)
file_text_close(LLFile)

return real(LightLevel)

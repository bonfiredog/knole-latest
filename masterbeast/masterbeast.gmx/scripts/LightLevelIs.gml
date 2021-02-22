///LightLevelIs()

LLFile = file_text_open_read("lightlevel.txt")
LatestLL = file_text_read_string(LLFile)
file_text_close(LLFile)

return real(LatestLL)

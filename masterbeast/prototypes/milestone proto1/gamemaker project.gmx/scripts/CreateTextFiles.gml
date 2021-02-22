//Create sleephistory.txt

global.SleepHistoryFile = file_text_open_write("sleephistory.txt")
file_text_write_string(global.SleepHistoryFile, "SLEEP HISTORY")
file_text_writeln(global.SleepHistoryFile)
file_text_write_string(global.SleepHistoryFile, "===============")
file_text_writeln(global.SleepHistoryFile)
file_text_close(global.SleepHistoryFile)


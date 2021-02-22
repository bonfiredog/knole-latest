///WriteToLog(entry)

if mWorldController.EventLogActive = true {
Entry = argument0
Date = string(current_day) + "/" + string(current_month) + "/" + string(current_year)
CurrentTime = string(current_hour) + ":" + string(current_minute) + ":" + string(current_second)

if file_exists("eventlog.txt") = false {
EventLog = file_text_open_write("eventlog.txt")
file_text_writeln(EventLog)
file_text_write_string(EventLog,Date)
file_text_writeln(EventLog)
file_text_write_string(Event,CurrentTime + ": Log started.")
} else {
EventLog = file_text_open_append("eventlog.txt")
}
file_text_writeln(EventLog)
file_text_write_string(EventLog, CurrentTime + ": " + Entry)
file_text_close(EventLog)
}

///StartCrunchingBehaviour()

with mBehavioursDeliberative {
WriteToLog("Started crunching.")
CrunchingActive = true
Repeats = 0
TotalCrunches = irandom_range(3,8)
CrunchingTimer = 60
}

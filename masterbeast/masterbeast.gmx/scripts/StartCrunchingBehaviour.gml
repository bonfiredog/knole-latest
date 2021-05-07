///StartCrunchingBehaviour()

with mBehavioursDeliberative {
WriteToLog("Started crunching.")
CrunchingActive = true
Repeats = 0
TotalCrunches = irandom_range(2000,3000)
CrunchingTimer = 60
}

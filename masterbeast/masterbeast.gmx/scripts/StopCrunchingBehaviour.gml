///StopCrunchingBehaviour()

with mBehavioursDeliberative {
CrunchingActive = false
Repeats = 0
TotalCrunches = irandom_range(10,25)
CrunchingTimer = 60
ex_audio_class_stop("crunches")
}

///PauseCrunchingBehaviour()

with mBehavioursDeliberative {
if CrunchingActive = true {
CrunchingActive = false
ex_audio_class_pause("crunches")
}
}

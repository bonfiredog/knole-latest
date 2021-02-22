///StopSneezeBehaviour()

with mBehavioursReactive {
if SneezeActive = true {
if mBehavioursReactive.Sleeping = false {
StartOpenEyeBehaviour("both",0)
}
SneezeActive = false
ResumeBreathingBehaviour()
}
}


if mBehavioursReactive.BreathingActive = true {
if mBehavioursReactive.BreathStatus = "in" {
BreathingMod = 0 + ((100 / mBehavioursReactive.BreathTime) * mBehavioursReactive.BreathTimeAmount)
} else if mBehavioursReactive.BreathStatus = "out" {
BreathingMod = 0 + ((100 / mBehavioursReactive.BreathTime) * mBehavioursReactive.BreathTimeAmount) 
}
}

BreathingMod = clamp(BreathingMod,0,100)

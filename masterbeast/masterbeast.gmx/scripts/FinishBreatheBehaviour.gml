///FinishBreatheBehaviour()

with mBehavioursReactive {
WriteToLog("Breathing stopped.")
BreathingActive = false
BreathRate = 1
BreathTimeAmount = 0
BreathTime = 0
BreathHoldAmount = 0
BreathHold = 0
BreathStatus = "in"
BreathingType = "both"
OutMod = 1
ChosenBreathInOut = false
PlayedSoundBreath = false
}

ex_audio_class_stop("breathingnoseinhealthy")
ex_audio_class_stop("breathingnoseinsick")
ex_audio_class_stop("breathingmouthinhealthy")
ex_audio_class_stop("breathingmouthinsick")
ex_audio_class_stop("breathingnoseouthealthy")
ex_audio_class_stop("breathingnoseoutsick")
ex_audio_class_stop("breathingmouthouthealthy")
ex_audio_class_stop("breathingmouthoutsick")

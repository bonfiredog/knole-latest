///StartBreatheBehaviour(breathrate,breathtime,breathholdamount,type)

with mBehavioursReactive {
WriteToLog("Breathing started.")
BreathingActive = true
BreathRate = argument0
BreathTimeAmount = 0
BreathTime = argument1
BreathHoldAmount = argument2
BreathHold = argument2
BreathStatus = "in"
BreathingType = argument3
OutMod = 1
ChosenBreathInOut = false
PlayedSoundBreath = false

ex_audio_class_set_volume("breathingnoseinhealthy",BothVolMod(0.6))
ex_audio_class_set_volume("breathingnoseinsick",BothVolMod(0.6))
ex_audio_class_set_volume("breathingmouthinhealthy",BothVolMod(0.6))
ex_audio_class_set_volume("breathingmouthinsick",BothVolMod(0.6))
ex_audio_class_set_volume("breathingnoseouthealthy",BothVolMod(0.6))
ex_audio_class_set_volume("breathingnoseoutsick",BothVolMod(0.6))
ex_audio_class_set_volume("breathingmouthouthealthy",BothVolMod(0.6))
ex_audio_class_set_volume("breathingmouthoutsick",BothVolMod(0.6))

}

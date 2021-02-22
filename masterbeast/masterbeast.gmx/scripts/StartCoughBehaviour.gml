with mBehavioursReactive {
WriteToLog("Coughed.")
CoughingActive = true
CoughSound = choose("cough1","cough2","cough3","cough4")
ex_audio_set_position(CoughSound,oMouthCentre.x,oMouthCentre.y,1)
ex_audio_set_volume(CoughSound,BothVolMod(0.1),1)
SetupCough = false
CoughCloseEyes = 0
TriggerCough = false
CoughTimer = 50
}

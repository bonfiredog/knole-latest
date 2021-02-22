///HoldBreathFor(steps)

with mDriveCollectionMaster {
CurrentlyBreathing = "holding"
mBehavioursReactive.BreathingActive = "holding"
ex_audio_class_pause("breathingnoseinhealthy")
ex_audio_class_pause("breathingnoseinsick")
ex_audio_class_pause("breathingmouthinhealthy")
ex_audio_class_pause("breathingmouthinsick")
ex_audio_class_pause("breathingnoseouthealthy")
ex_audio_class_pause("breathingnoseoutsick")
ex_audio_class_pause("breathingmouthouthealthy")
ex_audio_class_pause("breathingmouthoutsick")
HoldBreathTimer = argument0
HoldingBreath = true
}

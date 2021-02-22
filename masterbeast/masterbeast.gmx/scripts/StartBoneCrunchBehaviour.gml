///StartBoneCrunchBehaviour(volume)

with mBehavioursDeliberative {
WriteToLog("started crunching bones")
BoneCrunchingActive = true
BCCurrentVolume = argument0
BCCurrentSound = choose("sound1","sound2")
ex_audio_set_volume(BCCurrentSound,BCCurrentVolume,0)
ex_audio_play(BCCurrentSound,false)
BCStatus = "play"
}

///MakeDripSound(x,y)

DripSound = choose("drip1","drip2","drip3","drip4","drip5")
ex_audio_set_volume(DripSound,BothVolMod(0.04),0)
ex_audio_set_position(DripSound,argument0,argument1,1)
ex_audio_set_pitch(DripSound,random_range(2.1,2.9))
ex_audio_play(DripSound,0)

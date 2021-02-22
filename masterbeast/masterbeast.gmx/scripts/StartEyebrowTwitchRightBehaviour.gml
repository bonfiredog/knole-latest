///StartEyebrowTwitchRightBehaviour()

with mBehavioursReactive {
EyebrowTwitchRActive = true
ex_audio_set_pitch("twitchshort",random_range(0.8,1.3),0)
ex_audio_set_volume("twitchshort",BothVolMod(0.001),0)
ex_audio_set_position("twitchshort",oBrowRight.x,oBrowRight.y,0)
ex_audio_play("twitchshort",0)
}

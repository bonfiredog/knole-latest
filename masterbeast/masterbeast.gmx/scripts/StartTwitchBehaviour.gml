///StartTwitchBehaviour(rateup,ratedown,intensity)

with mBehavioursReactive {
WriteToLog("Started nose twitch.")
TwitchingActive = true
TwitchIntensity = argument2
TwitchRateUp = argument0
TwitchRateDown = argument1
TwitchingMod = 0
TwitchInComplete = false
TwitchComplete = false
TwitchOutComplete = false

ex_audio_set_pitch("twitchshort",random_range(0.8,1.3),0)
ex_audio_set_volume("twitchshort",BothVolMod(0.001),0)
ex_audio_set_position("twitchshort",oNose1.x,oNose1.y,0)
ex_audio_play("twitchshort",0)
}

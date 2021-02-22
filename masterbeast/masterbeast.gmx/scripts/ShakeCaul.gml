///ShakeCaul(intensity,speed)

with oCaulJug {
Shaking = true
ShakeInt = argument0
ShakeRate = argument1
ShakeTrack = 100
ShakeDir = choose("left","right")
ShakeDiff = 0
if ex_audio_is_playing("twitch") = false {
ex_audio_set_pitch("twitch",random_range(0.8,1.3),0)
ex_audio_set_volume("twitch",BothVolMod(0.5),0)
ex_audio_set_position("twitch",oCaulJug.x,oCaulJug.y,0)
ex_audio_play("twitch",1)
}
}

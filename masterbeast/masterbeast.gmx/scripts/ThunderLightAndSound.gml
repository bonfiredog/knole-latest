///ThunderLightAndSound()

if ThunderCountdown > 0 {
//Countdown to Thunder
ThunderCountdown -= 1
} else if ThunderCountdown <= 0 {
//Start Flash Timer & Set Flash
FlashInProgress = true
FlashTimer = 20
ThunderLightReactions()
}

//Flash, and then start the countdown to the noise.
if FlashInProgress = true {
FlashTimer -= 1
if FlashTimer <= 0 {
WaitingForNoise = true
NoiseTimer = random_range(120,600)
}
}

if WaitingForNoise = true {
NoiseTimer -= 1
if NoiseTimer <= 0 {
//Play thunder audio from choices and reset
ex_audio_class_play_unique("thunders",0.9,1.1)
WaitingForNoise = false
FlashTimer = irandom_range(15,30)
FlashInProgress = false
ThunderCountdown = irandom_range(2,10) * 60 * room_speed
ThunderSoundReactions()
NoiseTimer = random_range(120,600)
}
}

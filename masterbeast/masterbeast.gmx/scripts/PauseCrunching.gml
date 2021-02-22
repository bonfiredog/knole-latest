///PauseCrunching

with mBehavioursDeliberative {
CrunchingActive = false
CrunchingPauseTimer = irandom_range(50,150) + ((50 / 100) * mEmotionSubController.Fear)
CrunchReset = true
}

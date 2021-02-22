///TapReactions

if DrivesAreOn() {
ChanceToWake(1 + Taps)
TwitchIfNearBP(mouse_x,mouse_y,200)

mCreatureController.BasePain+=0.2 + (Taps / 10)

if IsInRitual() = false {
ISUp(mCreatureController.BaseResistance,0.2 + (Taps / 10))
mDriveCollectionMaster.BaseBreathRate += 0.001
if Chance(10 + Taps){RandomShake()}
if Chance(10 + Taps){RandomVoc(0.05 + (Taps / 15))}
if Chance(10 + Taps){ShiftAway(mouse_x,mouse_y,irandom_range(20,60),random(360))}
if mCreatureController.Triad < 0 {
mCreatureController.BaseStress+=0.2 + (Taps / 10)
}
mCreatureController.BaseSubIntent-=0.002 + (Taps / 1000)
ChangeEmotionStep("anger","up",0.2 + (Taps / 10))
}
}

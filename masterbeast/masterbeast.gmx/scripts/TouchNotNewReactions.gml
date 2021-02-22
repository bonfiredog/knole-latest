///TouchNotNewReactions()

if DrivesAreOn() {
if IsAlive() and AmountForward(60) {
ChanceToWake(0.5)
if IsInRitual() or (IsInRitual() = false and (mCreatureController.Triad > 0 and mCreatureController.Stress < 50 and mEmotionSubController.AngerActivation < 40 and mEmotionSubController.ShameActivation < 40)) {
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForwardUnCapped("moveforward",40,100 - mBehavioursDeliberative.PercentForward)
}
if ChanceToRitualReact(){RandomTwitch()}
if ChanceToRitualReact(){TwitchIfNearBP(mFinger.x,mFinger.y,100)}
} else {
if mCreatureController.Triad > 0 {
ChangeEmotionStep("happy","up",1)
mCreatureController.BaseLust+=0.5
} else {
mCreatureController.BaseResistance+=0.5
mCreatureController.BaseStress+=0.5
ChangeEmotionStep("anger","up",1)
}
}
}
}

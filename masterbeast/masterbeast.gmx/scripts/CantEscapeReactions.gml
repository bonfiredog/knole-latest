///CantEscapeReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() {
RandomShake()
EyeSquint(3,true,irandom_range(30,60))
EmotionRequest()
mDriveCollectionMaster.BaseBreathRate += 0.006

if mCreatureController.Triad > 0 {
ChangeEmotion("surprise","up",0.8,irandom_range(10,20))
}
mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
if Chance(10 + ((20 / 100) * (100 - mEmotionSubController.FearActivation))) {
RandomVoc(0.3)
}
ChangeEmotion("happy","down",0.2,5)
ChangeEmotion("fear","up",0.3,5)
ChangeEmotion("anger","up",0.3,10)

mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
mCreatureController.BaseStress += 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.1 * mPlotController.ISModifier
mDriveCollectionMaster.alarm[1] = 60
}
}



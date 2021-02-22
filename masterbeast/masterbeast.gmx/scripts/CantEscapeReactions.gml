///CantEscapeReactions()

if IsAlive() {
EyeSquint(3,true,irandom_range(30,60))
EmotionRequest()
mDriveCollectionMaster.BaseBreathRate += 0.06
if Chance(50) {
LittleJump()
}

if mCreatureController.Triad > 0 {
ChangeEmotion("surprise","up",0.8,irandom_range(10,30))
}
ISDown(mCreatureController.BaseTrust, 1)
if Chance(10 + ((20 / 100) * (100 - mCreatureController.FearActivation))) {
RandomVoc(0.3)
}
ChangeEmotion("happy","down",0.2,2)
ChangeEmotion("fear","up",0.3,1)
ChangeEmotion("anger","up",0.3,3)

ISUp(mCreatureController.BaseResistance, 3)
ISUp(mCreatureController.BaseStress, 3)
ISDown(mCreatureController.BaseSubIntent,0.05)
}




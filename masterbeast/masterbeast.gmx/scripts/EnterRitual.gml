///EnterRitual()

with mDriveCollectionMaster {
if IsInRitual() = false {
TimeTaken = irandom_range(60,120)
EyeSquint(3,true,TimeTaken)
LittleJump()
TwitchRun(15)
MoveToXY(500,1000,MoveSpeedCalc(),MacroView,ZoomSpeedCalc())
NumberOfBlinks(5)
with oBellSounder {
StartedTolling = true 
NumberOfTolls = 1
TollStart = false
}
if instance_exists(oEarLeft) {
oEarLeft.BaseRedness = 0.5
}
if instance_exists(oEarRight) {
oEarRight.BaseRedness = 0.5
}

ChangeEmotion("surprise","up",1,40)
mCreatureController.Lust += 20
mCreatureController.CloseToAnne += 0.03 * mPlotController.ISModifier
StartShiverBehaviour(12,TimeTaken,2)

with mDriveCollectionMaster {
PreviousHappy = mEmotionSubController.HappyActivation
PreviousAnger = mEmotionSubController.AngerActivation
PreviousShame = mEmotionSubController.ShameActivation
PreviousFear = mEmotionSubController.FearActivation
PreviousSad = mEmotionSubController.SadActivation
}

mDriveCollectionMaster.InRitual = true
alarm[3] = 75
alarm[4] = 3
}
}

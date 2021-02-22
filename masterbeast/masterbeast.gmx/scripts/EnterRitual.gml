///EnterRitual()

with mDriveCollectionMaster {
if IsInRitual() = false {
TimeTaken = irandom_range(60,120)
EyeSquint(3,true,TimeTaken)
LittleJump()
TwitchRun(15)
MoveToXY(0,1000,60,MacroView,50)
NumberOfBlinks(5)
with oBellSounder {
StartedTolling = true 
NumberOfTolls = 1
TollStart = false
}
oEarLeft.BaseRedness = 0.5
oEarRight.BaseRedness = 0.5

ChangeEmotion("surprise","up",1,40)
mCreatureController.Lust += 20
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

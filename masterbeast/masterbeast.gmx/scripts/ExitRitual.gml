///ExitRitual()

with mDriveCollectionMaster {
if IsInRitual() = true {

TimeTaken = irandom_range(60,120)
EyeSquint(3,true,TimeTaken)
LittleJump()
TwitchRun(50)
MoveToXY(0,1000,60,MacroView,50)

NumberOfBlinks(25)
with oBellSounder {
StartedTolling = true 
NumberOfTolls = 1
TollStart = false
}
oEarLeft.BaseRedness = 0.5
oEarRight.BaseRedness = 0.5

mCreatureController.Lust -= 20
StartShiverBehaviour(12,TimeTaken,2)

if RitualTolerance > 60 and Chance(50) {
RandomVoc(1 + ((2 / 100) * RitualTolerance))
}

with mDriveCollectionMaster {
ResetEmotion("happy",mEmotionSubController.HappyActivation,PreviousHappy)
ResetEmotion("anger",mEmotionSubController.AngerActivation,PreviousAnger)
ResetEmotion("shame",mEmotionSubController.ShameActivation,PreviousShame)
ResetEmotion("fear",mEmotionSubController.FearActivation,PreviousFear)
ResetEmotion("sad",mEmotionSubController.SadActivation,PreviousSad)
}

mDriveCollectionMaster.InRitual = false
alarm[3] = 75
alarm[4] = 3
}
}

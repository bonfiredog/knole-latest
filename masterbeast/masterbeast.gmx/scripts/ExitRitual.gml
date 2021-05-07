///ExitRitual()

with mDriveCollectionMaster {
if IsInRitual() = true {

TimeTaken = irandom_range(60,120)
EyeSquint(3,true,TimeTaken)
LittleJump()
TwitchRun(50)
MoveToXY(500,1000,60,MacroView,50)

NumberOfBlinks(25)
with oBellSounder {
StartedTolling = true 
NumberOfTolls = 1
TollStart = false
}
if instance_exists(oEarLeft){oEarLeft.BaseRedness = 0.5}
if instance_exists(oEarRight){oEarRight.BaseRedness = 0.5}

mCreatureController.Lust -= 20
StartShiverBehaviour(12,TimeTaken,2)

if RitualTolerance > 60 and Chance(50) {
RandomVoc(1 + ((2 / 100) * RitualTolerance))
}

StopEyeSquint(false)

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
EnterRitualDecideTimer = 0
EnterRitualOrNot = 0
DecidingOnRitual = false
Inspirare = false
MouseSigil = false
ReadyToGo43 = false
MolesShaking = false
MSTimer = 0
Speaking = false
ReturnAndAnswer = false
RAndATimer = 0
ReadyToGo97 = false
MotesMoving = false
MotesVibrating = false
MakingConkers = false
SpinEarCount = 0
SpinEarTotal = 0

mDriveCollectionMaster.alarm[1] = 60

}
}

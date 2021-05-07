///StopSleepBehaviour(blinks,sudden?)

with mBehavioursReactive {
WriteToLog("Woken up.")
Blinks = argument0
SuddenWaking = argument1
VocaliseChance(20)
TwitchRun(irandom_range(10,20))
if Chance(50){RandomShake()}
if Chance(40){LittleJump()}
SleepingActive = false
if mCreatureController.Tiredness < 20 {
ChangeEmotion("happy","up",0.3,irandom_range(5,10))
ChangeEmotion("anger","down",0.3,irandom_range(5,10))
ChangeEmotion("sad","down",0.3,irandom_range(5,10))
ChangeEmotion("shame","down",0.3,irandom_range(5,10))
mCreatureController.BaseStress -= 20 * mDriveCollectionMaster.ISModifier
} else {
ChangeEmotion("happy","up",0.3,irandom_range(5,10))
ChangeEmotion("anger","down",0.3,irandom_range(5,10))
ChangeEmotion("sad","down",0.3,irandom_range(5,10))
ChangeEmotion("shame","down",0.3,irandom_range(5,10))
mCreatureController.BaseStress += 20 * mDriveCollectionMaster.ISModifier
}
mDriveCollectionMaster.SleepResetTimer = irandom_range(3600,4500)
}

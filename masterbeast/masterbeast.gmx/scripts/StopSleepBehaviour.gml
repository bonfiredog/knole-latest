///StopSleepBehaviour(blinks,sudden?)

with mBehavioursReactive {
WriteToLog("Woken up.")
Blinks = argument0
SuddenWaking = argument1
SleepingActive = false
if mCreatureController.Tiredness < 20 {
ChangeEmotion("happy","up",0.3,irandom_range(5,10))
ChangeEmotion("anger","down",0.3,irandom_range(5,10))
ChangeEmotion("sad","down",0.3,irandom_range(5,10))
ChangeEmotion("shame","down",0.3,irandom_range(5,10))
mCreatureController.BaseStress -= 20
} else {
ChangeEmotion("happy","up",0.3,irandom_range(5,10))
ChangeEmotion("anger","down",0.3,irandom_range(5,10))
ChangeEmotion("sad","down",0.3,irandom_range(5,10))
ChangeEmotion("shame","down",0.3,irandom_range(5,10))
mCreatureController.BaseStress += 20
}
mDriveCollectionMaster.SleepResetTimer = irandom_range(3600,4500)
}

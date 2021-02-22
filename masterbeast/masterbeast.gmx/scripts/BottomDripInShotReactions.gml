///BottomDripInShotReactions()

if mBehavioursReactive.Sleeping = false
and mCreatureController.Alive > 20 and 
mBehavioursDeliberative.PercentForward > 90 {

if mDriveCollectionMaster.InRitual = false {
VocaliseChance(0.3)
if Chance(0.2) and mInterfaceController.ScreenShaking = false {
StartScreenShake(40,0.7,7)
}

ChangeEmotionStep("happy","down",0.009)
ChangeEmotionStep("sad","up",0.009)
ChangeEmotionStep("anger","down",0.01)
}
mDriveCollectionMaster.BaseBreathRate += 0.02
StartScreenShake(20,0.3,5)
if Chance(0.5 - ((0.2 / 100) * (100 - mCreatureController.Alive))) {
MoveToXY(0,1000,70,MacroView,70)
}


if Chance(20){ShakeCaul(10,20)}
ChangeEmotionStep("shame","up",0.01)
mDriveCollectionMaster.BaseBreathRate += 0.001
with mCreatureController {
BaseTiredness += 0.0025
BaseTrust -= 0.002
BasePain += 0.002
BaseLust += 0.07
BaseStress += 0.02
SubIntent -= 0.001
CloseToAnne += 0.02
BaseResistance -= 0.04
}
}

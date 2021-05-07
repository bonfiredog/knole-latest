///FurPullReaction

if mCreatureController.Alive > 0 { 

//General
mDriveCollectionMaster.BaseBreathRate += 0.000001
ChanceToWake(0.01)
StopYawnBehaviour()
if Chance(0.1){TwitchIfNearBP(mouse_x,mouse_y,300)}
if Chance(0.1){TwitchRun(irandom_range(3,10))}
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",15,100 - mBehavioursDeliberative.PercentForward)
}
if Chance(0.1){StartShiverBehaviour(irandom_range(5,10),irandom_range(30,40),irandom_range(1,2))}

//Ritual & Not
if mDriveCollectionMaster.InRitual = true {
if Chance(0.05) {
EyeSquint(irandom_range(4,5),true,irandom_range(20,55))
}
mCreatureController.BasePain += 0.05 * mDriveCollectionMaster.ISModifier
} else {

//Surprise
if mDriveCollectionMaster.FurPullTimer <= 0 {
ChangeEmotion("surprise","up",1,25)
mDriveCollectionMaster.FurPullTimer = irandom_range(1000,2000) - ((1000 * mCreatureController.Triad))
}

VocaliseChance(0.1)
with mCreatureController {
BaseResistance -= 0.001 * mPlotController.ISModifier
BaseStress += 0.02 * mPlotController.ISModifier
BasePain += 0.002 * mPlotController.ISModifier
CloseToAnne -= 0.01 * mPlotController.ISModifier
BaseTrust -= 0.01 * mPlotController.ISModifier
BaseSubIntent -= 0.0001 * mPlotController.ISModifier
BaseLust -= 0.001 * mPlotController.ISModifier
}
ChangeEmotionStep("happy","down",0.03)
ChangeEmotionStep("anger","up",-0.3 * mCreatureController.Triad)
ChangeEmotionStep("fear","down",-0.3 * mCreatureController.Triad)
if Chance(0.05) {
EyeSquint(irandom_range(4,5),true,irandom_range(20,55))
}
HoldBreathFor(5)
}
}

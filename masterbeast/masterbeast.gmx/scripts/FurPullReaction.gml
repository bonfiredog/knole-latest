///FurPullReaction

if mCreatureController.Alive > 0 { 

//General
mDriveCollectionMaster.BaseBreathRate += 0.0001
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
mCreatureController.BasePain += 0.05
} else {

//Surprise
if mDriveCollectionMaster.FurPullTimer <= 0 {
ChangeEmotion("surprise","up",1,25)
mDriveCollectionMaster.FurPullTimer = irandom_range(1000,2000) - ((1000 * mCreatureController.Triad))
}

VocaliseChance(0.1)
with mCreatureController {
BaseResistance -= 0.001
BaseStress += 0.02
BasePain += 0.002
CloseToAnne -= 0.01
BaseTrust -= 0.01
BaseSubIntent -= 0.0001
BaseLust -= 0.001
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

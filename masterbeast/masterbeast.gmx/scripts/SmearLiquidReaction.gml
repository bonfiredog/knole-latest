///SmearLiquidReaction

if DrivesAreOn() {
if mCreatureController.Alive > 0 {
if mDriveCollectionMaster.InRitual = true {
if Chance(ChanceToRitualReact()){StartShiverBehaviour(3,irandom_range(20,25),3)}
TwitchIfNearBP(mouse_x,mouse_y,150)
RandomTwitch()
ChangeEmotion("happy","up",0.07,1.5)
mCreatureController.BaseTrust += 0.5
mCreatureController.SubIntent += 0.03
mDriveCollectionMaster.BaseBreathRate += 0.1
} else {
mDriveCollectionMaster.BaseBreathRate += 0.1
TwitchIfNearBP(mouse_x,mouse_y,150)
RandomTwitch()
RandomTwitch()
if mBehavioursReactive.Sleeping = false {
ChangeEmotion("anger","up",0.05,1.5)
ChangeEmotion("happy","down",0.05,1.5)
ChangeEmotion("shame","up",0.05,1)
VocaliseChance(mCreatureController.Dirt)
if Chance(mEmotionSubController.ShameActivation) {
StartShiverBehaviour(3,irandom_range(30,50),3)
}
with mCreatureController {
BaseTrust -= 1
BaseStress += 1
SubIntent -= 0.01
CloseToAnne -= 2
BaseResistance += 2
}
}
}
} 
}






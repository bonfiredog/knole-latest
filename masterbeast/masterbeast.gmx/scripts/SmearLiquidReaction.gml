///SmearLiquidReaction

if mDriveCollectionMaster.RealReactionsOn = true {
if mCreatureController.Alive > 0 {
if mDriveCollectionMaster.InRitual = true {
if Chance(ChanceToRitualReact() * ReactChance()){StartShiverBehaviour(3,irandom_range(20,25),3)}
TwitchIfNearBP(mouse_x,mouse_y,150)
RandomTwitch()
ChangeEmotion("happy","up",0.07,1.5)
mCreatureController.BaseTrust += 0.5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.03 * mPlotController.ISModifier
mDriveCollectionMaster.BaseBreathRate += 0.0005 
} else {
mDriveCollectionMaster.BaseBreathRate += 0.0005
TwitchIfNearBP(mouse_x,mouse_y,150)
RandomTwitch()
RandomTwitch()
if mBehavioursReactive.Sleeping = false {

if mInterfaceController.Healing = false {
ChangeEmotion("anger","up",0.05,1.5)
ChangeEmotion("happy","down",0.05,1.5)
ChangeEmotion("shame","up",0.05,1)
VocaliseChance(mCreatureController.Dirt)
}
if Chance(mEmotionSubController.ShameActivation * ReactChance()) {
StartShiverBehaviour(3,irandom_range(30,50),3)
}
with mCreatureController {
if mInterfaceController.Healing = false {
BaseTrust -= 1 * mPlotController.ISModifier
BaseStress += 1 * mPlotController.ISModifier
BaseSubIntent -= 0.01 * mPlotController.ISModifier
CloseToAnne -= 2 * mPlotController.ISModifier
BaseResistance += 2 * mPlotController.ISModifier
}
}
}
}
} 
}






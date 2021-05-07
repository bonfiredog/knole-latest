///TouchMoleReactions

if mDriveCollectionMaster.RealReactionsOn = true {

if mCreatureController.Alive > 0 and mBehavioursReactive.Sleeping = false and mInterfaceController.CurrentView = MicroView {
ChanceToWake(1)
TwitchIfNearBP(mouse_x,mouse_y,150)
mDriveCollectionMaster.BaseBreathRate += 0.0001
if mBehavioursReactive.Sleeping = false  {
if mDriveCollectionMaster.InRitual = true {
with mCreatureController {
BaseLust += 2 * mPlotController.ISModifier
BaseResistance -= 0.1 * mPlotController.ISModifier
BaseTrust += 0.1 * mPlotController.ISModifier
AnneIntent += 0.001 * mPlotController.ISModifier
CloseToAnne += 0.1 * mPlotController.ISModifier
}
ChangeEmotion("happy","up",0.02,2)
ChangeEmotion("sad","down",0.02,2)
ChangeEmotion("anger","down",0.02,2)
ChangeEmotion("fear","down",0.02,2)
} else {
if mDriveCollectionMaster.TouchMoleTimer <= 0 {
if mCreatureController.Triad < 0 {
HoldBreathFor(irandom_range(20,40) * -mCreatureController.Triad)
}
ShiverChance(60 * ReactChance())
LittleJump()
ChangeEmotion("surprise","up",0.2,10)
if Chance(mEmotionSubController.FearActivation / 2){StartVocalisation("shortlow",0.2,choose("same","rise","fall"),50)}
mDriveCollectionMaster.TouchMoleTimer = irandom_range(3000,5000)
}

if mCreatureController.Triad > 0 {
mCreatureController.BaseSubIntent += 0.002 * mPlotController.ISModifier
mCreatureController.BaseLust += 0.2 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 0.2 * mPlotController.ISModifier
ChangeEmotion("happy","down",0.2,2)
mCreatureController.BaseTrust -= 0.2 * mPlotController.ISModifier
ChangeEmotion("anger","up",0.2,0.5) 
mCreatureController.BaseResistance += 0.2 * mPlotController.ISModifier
mCreatureController.BaseStress += 0.2 * mPlotController.ISModifier
} else {
if mInterfaceController.Healing = false {
ChangeEmotion("fear","up",0.2,4)
mCreatureController.BaseSubIntent -= 0.02 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 0.2 * mPlotController.ISModifier
mCreatureController.BaseLust += 0.2* mPlotController.ISModifier
mCreatureController.BaseStress += 0.2 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.2 * mPlotController.ISModifier
mCreatureController.BaseResistance += 0.2 * mPlotController.ISModifier
ChangeEmotion("happy","down",0.2,2)
ChangeEmotion("shame","up",0.2,2)
if Chance(10 * ReactChance()){
Len = irandom_range(20,50)
Dir = random(360)
ShiftAway(mouse_x,mouse_y,Len,Dir)
}
}
}
}
}
}

}


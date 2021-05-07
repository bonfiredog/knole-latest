///CutWenReaction()

if mDriveCollectionMaster.RealReactionsOn = true {
if mCreatureController.Alive > 0 {
if mDriveCollectionMaster.CutWenTimer <= 0 {
if mDriveCollectionMaster.InRitual = false {
ChangeEmotion("surprise","up",0.9,10 * mCreatureController.Triad)
}
if ChanceToRitualReact() * ReactChance(){LittleJump()}
if ChanceToRitualReact() * ReactChance(){TwitchRun(irandom_range(3,5))}
if ChanceToRitualReact() * ReactChance(){
Len = irandom_range(40,80)
Dir = random(360)
ShiftAway(mouse_x,mouse_y,Len,Dir)
}
mDriveCollectionMaster.CutWenTimer = irandom_range(600,1000)
}
ChanceToWake(10)
TwitchIfNearBP(mouse_x,mouse_y,150)
mCreatureController.BasePain += 3 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseTiredness += 0.5 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.01 * mDriveCollectionMaster.ISModifier
if Chance(50 * ReactChance()){HoldBreathFor(irandom_range(3,8))}
mDriveCollectionMaster.BaseBreathRate += 0.0001
if mDriveCollectionMaster.InRitual = true {
ChangeEmotion("happy","up",0.03,1)
with mCreatureController {
BaseResistance -= 0.4 * mPlotController.ISModifier
BaseSubIntent += 0.03 * mPlotController.ISModifier
BaseTrust += 0.4 * mPlotController.ISModifier
CloseToAnne += 0.3 * mPlotController.ISModifier
}
} else {
with mCreatureController {
BaseResistance += 0.3 * mPlotController.ISModifier
CloseToAnne -= 0.3 * mPlotController.ISModifier
BaseSubIntent -= 0.03 * mPlotController.ISModifier
BaseTrust -= 0.3 * mPlotController.ISModifier
}
if Chance(mCreatureController.Pain){StartNumberSniffsBehaviour(1)}
if Chance(mCreatureController.Resistance){
Len = irandom_range(40,80)
Dir = random(360)
ShiftAway(mouse_x,mouse_y,Len,Dir)
}
ChangeEmotion("anger","up",0.06,0.3)
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.07,3)}
VocaliseChance(mCreatureController.Pain * 1.4)
}
}
}

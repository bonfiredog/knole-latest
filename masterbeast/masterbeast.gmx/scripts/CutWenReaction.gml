///CutWenReaction()

if DrivesAreOn() {
if mCreatureController.Alive > 0 {
if mDriveCollectionMaster.CutWenTimer <= 0 {
if mDriveCollectionMaster.InRitual = false {
ChangeEmotion("surprise","up",0.9,10 * mCreatureController.Triad)
}
if ChanceToRitualReact(){LittleJump()}
if ChanceToRitualReact(){TwitchRun(irandom_range(3,5))}
if ChanceToRitualReact(){
Len = irandom_range(40,80)
Dir = random(360)
MoveToXY(mouse_x + lengthdir_x(Len,Dir),mouse_y + lengthdir_y(Len,Dir),15,mInterfaceController.CurrentView,15)
}
mDriveCollectionMaster.CutWenTimer = irandom_range(600,1000)
}
ChanceToWake(1)
TwitchIfNearBP(mouse_x,mouse_y,150)
mCreatureController.BasePain += 0.5
mCreatureController.BaseTiredness += 0.1
mCreatureController.BaseAlive -= 0.01
if Chance(50){HoldBreathFor(irandom_range(3,8))}
mDriveCollectionMaster.BaseBreathRate += 0.1
if mDriveCollectionMaster.InRitual = true {
ChangeEmotion("happy","up",0.03,2)
with mCreatureController {
BaseResistance -= 0.4
BaseSubIntent += 0.03
BaseTrust += 0.4
CloseToAnne += 0.3
}
} else {
with mCreatureController {
BaseResistance += 0.3
CloseToAnne -= 0.3
BaseSubIntent -= 0.03
BaseTrust -= 0.3
}
if Chance(mCreatureController.Pain){StartNumberSniffsBehaviour(1)}
if Chance(mCreatureController.Resistance){
Len = irandom_range(40,80)
Dir = random(360)
MoveToXY(mouse_x + lengthdir_x(Len,Dir),mouse_y + lengthdir_y(Len,Dir),15,mInterfaceController.CurrentView,15)
}
ChangeEmotion("anger","up",0.06,0.3)
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.07,3)}
VocaliseChance(mCreatureController.Pain / 2)
}
}
}

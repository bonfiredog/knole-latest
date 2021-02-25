///TouchMoleReactions

if DrivesAreOn() {

if mCreatureController.Alive > 0 and mBehavioursReactive.Sleeping = false and mInterfaceController.CurrentView = MicroView {
ChanceToWake(1)
TwitchIfNearBP(mouse_x,mouse_y,150)
mDriveCollectionMaster.BaseBreathRate += 0.001
if mBehavioursReactive.Sleeping = false  {
if mDriveCollectionMaster.InRitual = true {
with mCreatureController {
BaseLust += 2
BaseResistance -= 0.1
BaseTrust += 0.1
AnneIntent += 0.001
CloseToAnne += 0.1
}
ChangeEmotion("happy","up",0.02,2)
ChangeEmotion("sad","down",0.02,2)
ChangeEmotion("anger","down",0.02,2)
ChangeEmotion("fear","down",0.02,2)
if Chance(50){MoveToXY(mouse_x,mouse_y,20,MicroView,20)}
} else {
if mDriveCollectionMaster.TouchMoleTimer <= 0 {
if mCreatureController.Triad < 0 {
HoldBreathFor(irandom_range(20,40) * -mCreatureController.Triad)
}
ShiverChance(60)
LittleJump()
ChangeEmotion("surprise","up",0.2,10)
if Chance(mEmotionSubController.FearActivation / 2){StartVocalisation("shortlow",0.2,choose("same","rise","fall"),50)}
mDriveCollectionMaster.TouchMoleTimer = irandom_range(3000,5000)
}

if mCreatureController.Triad > 0 {
mCreatureController.BaseSubIntent += 0.002
mCreatureController.BaseLust += 0.2
mCreatureController.CloseToAnne -= 0.2
ChangeEmotion("happy","down",0.2,2)
mCreatureController.BaseTrust -= 0.2
ChangeEmotion("anger","up",0.2,0.5)
mCreatureController.BaseResistance += 0.2
mCreatureController.BaseStress += 0.2
} else {
ChangeEmotion("fear","up",0.2,4)
mCreatureController.BaseSubIntent -= 0.02
mCreatureController.CloseToAnne -= 0.2
mCreatureController.BaseLust += 0.2
mCreatureController.BaseStress += 0.2
mCreatureController.Stress += 2
mCreatureController.BaseTrust -= 0.2
mCreatureController.BaseResistance += 0.2
ChangeEmotion("happy","down",0.2,2)
ChangeEmotion("shame","up",0.2,2)
if Chance(10){
Len = irandom_range(20,50)
Dir = random(360)
MoveToXY(mouse_x + lengthdir_x(Len,Dir),mouse_y + lengthdir_y(Len,Dir),10,MicroView,10)
}
}
}
}
}
}


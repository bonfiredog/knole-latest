///FurPluckedReaction

if mCreatureController.Alive > 0 {

//General
if Chance(mCreatureController.Pain){StartNumberSniffsBehaviour(1)}
if Chance(mCreatureController.Pain){
Len = irandom_range(100,150)
Dir = random(360)
MoveToXY(mouse_x + lengthdir_x(Len,Dir),mouse_y + lengthdir_y(Len,Dir),5,mInterfaceController.CurrentView,20)
}
TwitchIfNearBP(mouse_x,mouse_y,300)
TwitchIfNearBP(mouse_x,mouse_y,300)
TwitchIfNearBP(mouse_x,mouse_y,300)
TwitchIfNearBP(mouse_x,mouse_y,300)
StopYawnBehaviour()
LittleJump()
HoldBreathFor(20)
if ChanceToRitualReact(){
EyeSquint(2,true,irandom_range(20,30))
}

if Chance(mCreatureController.Pain){TwitchRun(irandom_range(8,20))}
mDriveCollectionMaster.BaseBreathRate += 0.1
ChanceToWake(10)
StartScreenShake(1,1,1)

//Ritual & Not
if mDriveCollectionMaster.InRitual = true {
} else {
EmotionRequest()
if Chance(50){MoveBackForward("retreat",irandom_range(3,8),irandom_range(5,8))}
if mDriveCollectionMaster.FurPluckedTimer <= 0 {
ChangeEmotion("surprise","up",1,40)
mDriveCollectionMaster.FurPluckedTimer = irandom_range(1000,2000) + ((1000 * mCreatureController.Triad))
}
VocaliseChance(20)
with mCreatureController {
BaseResistance += 1
BaseStress += 1
BasePain += 1
CloseToAnne -= 1
BaseTrust -= 1
BaseSubIntent -= 0.01
}
ChangeEmotion("happy","down",0.3,5)
if mCreatureController.Resistance > 50 {
ChangeEmotion("anger","up",0.3,5)
} else {
ChangeEmotion("fear","up",0.3,5)
}
} 
}

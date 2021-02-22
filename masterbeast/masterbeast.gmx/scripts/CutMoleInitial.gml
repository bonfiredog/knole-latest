///CutMoleInitial()

if IsAlive() and mInterfaceController.CurrentView = MicroView {
ChanceToWake(10)
if mDriveCollectionMaster.CutMoleTimer <= 0 {
ChangeEmotion("surprise","up",1,irandom_range(10,20) + (10 * mCreatureController.Triad))
mDriveCollectionMaster.CutMoleTimer = irandom_range(6000,8000) - NumberISMod(Trust,1000) + (1000 * mCreatureController.Triad) + LowAliveMod(1000) + NumberISMod(Tiredness,1000)
if Chance(40) {
LittleJump()
}
if Chance(20) {
TwitchRun(irandom_range(3,8))
}
mDriveCollectionMaster.BaseBreathRate += 0.002
StopYawnBehaviour()
StopVocalisation()
StopXYMove()
}
ISDown(BaseAlive,0.00005)
ISUp(BasePain,2)
TwitchIfNearBP(mFinger.x,mFinger.y,300)
if Chance(10) {
EyeSquint(irandom_range(1,4),true,irandom_range(20,30))
}
if IsInRitual() {
ChangeEmotion("happy","up",0.3,3)
ISUp(AnneIntent,0.001)
ISUp(BaseTrust,2)
ISUp(CloseToAnne,2)
if ChanceToRitualReact() {
StartShiverBehaviour(3,irandom_range(2,5),1)
}
MoveToXY(mFinger.x,mFinger.y,20,mInterfaceController.CurrentView,10)
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",20,20)
}
} else {
EmotionRequest()
ChangeEmotion("shame","up",0.3,2)
ChangeEmotion("sad","up",0.3,2)
ISUp(BaseStress,2)
ISDown(BaseSubIntent,0.002)
if Chance(5) {
ShiftAway(mFinger.x,mFinger.y,50,random(360))
}
if Chance(5) {
MoveBackForward("retreat",10,irandom_range(3,8))
}
VocaliseChance(5)
if Chance(5) {
RandomShake()
}
if mCreatureController.Triad > 0 {
ChangeEmotion("anger", "up", 0.2,2)
} else {
ChangeEmotion("fear","up",0.2,2)
}
ISUp(BaseResistance,2)
ChangeEmotion("happy","down",0.2,2)
}
}

///CutMoleReactions()

if IsAlive() and mInterfaceController.CurrentView = MicroView {
ChanceToWake(0.01)
mDriveCollectionMaster.BaseBreathRate += 0.00002

ISDown(BaseAlive,0.00000005)
ISUp(BasePain,0.002)
TwitchIfNearBP(mFinger.x,mFinger.y,300)
if Chance(0.001) {
EyeSquint(irandom_range(1,4),true,irandom_range(20,30))
}
if IsInRitual() {
ChangeEmotionStep("happy","up",0.003)
ISUp(AnneIntent,0.00001)
ISUp(BaseTrust,0.002)
ISUp(CloseToAnne,0.002)
if ChanceToRitualReact() / 2000 {
StartShiverBehaviour(3,irandom_range(2,5),1)
}
} else {
EmotionRequest()
ChangeEmotionStep("shame","up",0.002)
ChangeEmotion("sad","up",0.3,0.002)
ISUp(BaseStress,2)
ISDown(BaseSubIntent,0.002)
if Chance(0.005) {
ShiftAway(mFinger.x,mFinger.y,50,random(360))
}
if Chance(0.005) {
MoveBackForward("retreat",10,irandom_range(3,8))
}
VocaliseChance(0.005)
if Chance(0.005) {
RandomShake()
}
if mCreatureController.Triad > 0 {
ChangeEmotion("anger", "up", 0.002,2)
} else {
ChangeEmotion("fear","up",0.002,2)
}
ISUp(BaseResistance,0.002)
ChangeEmotionStep("happy","down",0.002)
}
}

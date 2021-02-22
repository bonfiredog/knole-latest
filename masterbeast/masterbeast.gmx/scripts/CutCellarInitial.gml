///CutCellarInitial()

if DrivesAreOn() 
if AmountForward(80) and IsAlive() {
ChanceToWake(70 - LowAliveMod(30)) 
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()

if mDriveCollectionMaster.CutCellarTimer <= 0 {
if Chance(20 + LowAliveMod(40)) {TwitchRun(irandom_range(10,20))}
if Chance(70 - LowAliveMod(30)) {LittleJump()}
ChangeEmotion("surprise","up",1,50 - LowAliveMod(30))
if IsInRitual() {
MoveBackForward("comeforward",irandom_range(10,20),20)
MoveToXY(mFinger.x,mFinger.y,15,mInterfaceController.CurrentView,10)
ISDown(BaseResistance,5)
mCreatureController.BasePain += 10
ISDown(BaseAlive,0.005)
mCreatureController.CloseToAnne += 2
mCreatureController.BaseTrust += 2
mCreatureController.AnneIntent += 0.05
ChangeEmotion("happy","up",0.5,10)
mCreatureController.BaseLust += 3
} else {
ISDown(BaseResistance,5)
mCreatureController.BaseStress += 4
mCreatureController.BasePain += 10
ISDown(BaseAlive,0.005)
ISDown(CloseToAnne,3)
ISDown(BaseTrust,3)
ISDown(BaseSubIntent,0.05)
ChangeEmotion("happy","down",0.5,10)
mCreatureController.BaseLust += 0.05
ChangeEmotion("shame","up",0.2,3)
ChangeEmotion("sad","up",0.2,3)
if Triad > 0 {
ChangeEmotion("anger","up",0.5,6)
} else {
ChangeEmotion("fear","up",0.5,6)
}

if Chance(30 - (30 * mCreatureController.Triad) - LowAliveMod(10)) {
MoveBackForwardUnCapped("retreat",irandom_range(10,20),irandom_range(10,30))
}
if Chance(30 - LowAliveMod(10)) {
RandomShake()
}
if Chance(30 - LowAliveMod(10)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
VocaliseChance(30 - LowAliveMod(10))
EmotionRequest()
}
mDriveCollectionMaster.CutCellarTimer = irandom_range(6000,8000) - NumberISMod(Trust,1000) - (1000 * mCreatureController.Triad) + NumberISMod(Alive,1000) + NumberISMod(Tiredness,1000) - NumberISMod(Stress,1000)  
}

if Chance(20) {
LittleJump()
}
HoldBreathFor(irandom_range(30,80))
mDriveCollectionMaster.BaseBreathRate += 0.1
if Chance(100 - mCreatureController.Alive) {
StartNumberSniffsBehaviour(1)
}
EyeSquint(irandom_range(0,3),true,irandom_range(80,150))

}

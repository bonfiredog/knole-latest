///CutCellarInitial()

if mDriveCollectionMaster.RealReactionsOn = true {
if AmountForward(80) and IsAlive() {
ChanceToWake(70 - LowAliveMod(30)) 
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()

if mDriveCollectionMaster.CutCellarTimer <= 0 {
if Chance(60 + LowAliveMod(40)) {TwitchRun(irandom_range(10,20))}
if Chance(70 - LowAliveMod(30)) {LittleJump()}
ChangeEmotion("surprise","up",1,70 - LowAliveMod(30))
if IsInRitual() {
MoveBackForward("comeforward",irandom_range(10,20),20)
MoveToXY(mouse_x,mouse_y,15,mInterfaceController.CurrentView,10)
mCreatureController.BaseResistance -= 20  * mPlotController.ISModifier
mCreatureController.BasePain += 30  * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.1  * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 5  * mPlotController.ISModifier
ChangeEmotion("happy","up",0.5,20)
ChangeEmotion("shame","up",1,50)
mCreatureController.BaseLust += 7  * mPlotController.ISModifier
} else {
mCreatureController.BaseResistance -= 20 * mPlotController.ISModifier
mCreatureController.BaseStress += 25 * mPlotController.ISModifier
mCreatureController.BasePain += 30 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.05 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 25 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 30 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.7 * mPlotController.ISModifier
ChangeEmotion("happy","down",0.5,25)
mCreatureController.BaseLust += 0.05  * mPlotController.ISModifier
ChangeEmotion("shame","up",0.2,40)
ChangeEmotion("sad","up",0.2,40)
if mCreatureController.Triad > 0 {
ChangeEmotion("anger","up",0.5,40)
} else {
ChangeEmotion("fear","up",0.5,40)
}


MoveBackForwardUnCapped("retreat",irandom_range(10,20),irandom_range(10,40))

if Chance(50 - LowAliveMod(20)) {
RandomShake()
}
if Chance(50 - LowAliveMod(20)) and instance_exists(mFinger) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
VocaliseChance(70 - LowAliveMod(30))
EmotionRequest()
}
mDriveCollectionMaster.CutCellarTimer = irandom_range(6000,8000) - NumberISMod(mCreatureController.Trust,1000) - (1000 * mCreatureController.Triad) + NumberISMod(mCreatureController.Alive,1000) + NumberISMod(mCreatureController.Tiredness,1000) - NumberISMod(mCreatureController.Stress,1000)  
}

if Chance(80 * ReactChance()) {
LittleJump()
}
HoldBreathFor(irandom_range(30,80))
mDriveCollectionMaster.BaseBreathRate += 0.0005
if Chance(100 - mCreatureController.Alive) {
StartNumberSniffsBehaviour(1)
}
EyeSquint(irandom_range(0,3),true,irandom_range(80,150))
}
mDriveCollectionMaster.alarm[1] = 60
}

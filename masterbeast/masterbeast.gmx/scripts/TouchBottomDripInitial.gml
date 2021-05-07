///TouchBottomDripInitial()

if mDriveCollectionMaster.RealReactionsOn = true {
if AmountForward(80) and IsAlive() {

mDriveCollectionMaster.alarm[1] = 60

ChanceToWake(70 - LowAliveMod(30)) 
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()

TwitchRun(irandom_range(20,30))
if Chance(40) {WinkRun(irandom_range(20,30))}
if mDriveCollectionMaster.CutCellarTimer <= 0 {
if Chance(70 - LowAliveMod(30)) {LittleJump()}
ChangeEmotion("surprise","up",1,80 - LowAliveMod(30))

if IsInRitual() {
MoveBackForward("comeforward",irandom_range(10,20),20)
mCreatureController.BaseResistance -= 10 * mPlotController.ISModifier
mCreatureController.BasePain += 10 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.05 * mPlotController.ISModifier
mCreatureController.CloseToAnne += 5 * mPlotController.ISModifier 
ChangeEmotion("happy","up",0.5,10)
mCreatureController.BaseLust += 5 * mPlotController.ISModifier
} else {
mCreatureController.BaseResistance -= 10 * mPlotController.ISModifier
mCreatureController.BaseStress += 10 * mPlotController.ISModifier
mCreatureController.BasePain += 10 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.05 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 5 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
ChangeEmotion("happy","down",0.5,15)
mCreatureController.BaseLust += 5  * mPlotController.ISModifier
ChangeEmotion("shame","up",0.2,10)
ChangeEmotion("sad","up",0.2,10)
if mCreatureController.Triad > 0 {
ChangeEmotion("anger","up",0.5,10)
} else {
ChangeEmotion("fear","up",0.5,10)
}

if Chance(50 - (30 * mCreatureController.Triad) - LowAliveMod(10)) {
MoveBackForwardUnCapped("retreat",irandom_range(10,20),irandom_range(10,40))
}
if Chance(60 - LowAliveMod(10)) {
RandomShake()
}
if Chance(50 - LowAliveMod(10)) {
ShiftAway(mouse_x,mouse_y,irandom_range(100,200),random(360))
}
VocaliseChance(40 - LowAliveMod(10))
EmotionRequest()
}
mDriveCollectionMaster.CutCellarTimer = irandom_range(6000,8000) - NumberISMod(mCreatureController.Trust,1000) - (1000 * mCreatureController.Triad) + NumberISMod(mCreatureController.Alive,1000) + NumberISMod(mCreatureController.Tiredness,1000) - NumberISMod(mCreatureController.Stress,1000)  
}

if Chance(30) {
LittleJump()
}
HoldBreathFor(irandom_range(30,80))
mDriveCollectionMaster.BaseBreathRate += 0.2
if Chance(100 - mCreatureController.Alive) {
StartNumberSniffsBehaviour(1)
}
EyeSquint(irandom_range(0,3),true,irandom_range(80,150))
}
}

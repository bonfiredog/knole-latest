///LoudQuietEarReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if IsAlive() and 
mInterfaceController.CurrentView = MicroView
and
(instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft))
or
(instance_exists(oEarRight) and PlayerViewOverObject(oEarRight))
and Heard()
{

//Shout In Ear
if HeardInEarLoud = true {
ChanceToWake(100)
if Chance(50) {
EyeSquint(irandom_range(0,2),true,irandom_range(50,80))
}
if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {oEarLeft.BaseRedness += 0.5}
if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {oEarRight.BaseRedness += 0.5}
mCreatureController.BaseResistance -= 15 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseStress += 10 * mDriveCollectionMaster.ISModifier
mCreatureController.BasePain += 7 * mDriveCollectionMaster.ISModifier
mCreatureController.BaseAlive -= 0.06 * mDriveCollectionMaster.ISModifier
if Chance(50) {
StartCheekTwitchLeftBehaviour()
StartCheekTwitchRightBehaviour()
}
if mDriveCollectionMaster.ShoutInEarTimer <= 0 and IsInRitual() = false {
ChangeEmotion("surprise","up",1.5,irandom_range(50,75))
if Chance(70 
* ReactChance()) {
MoveBackForwardUnCapped("retreat",15,irandom_range(20,40))
} else {
if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {ShiftAway(oEarLeft.x,oEarLeft.y,irandom_range(75,200),random(360))}
if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {ShiftAway(oEarLeft.x,oEarLeft.y,irandom_range(75,200),random(360))}
}

mDriveCollectionMaster.BaseBreathRate += 0.0002
LittleJump()
StopShiverBehaviour()
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
mDriveCollectionMaster.ShoutInEarTimer = irandom_range(8000,10000) + NumberISMod(mCreatureController.Trust,1000) - (1000 * mCreatureController.Triad) + NumberISMod(mCreatureController.Tiredness,1000) + LowAliveMod(1000)
}

if IsInRitual() {
if ChanceToRitualReact() {
LittleJump()
}
if ChanceToRitualReact() {
if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {ShiftAway(oEarLeft.x,oEarLeft.y,irandom_range(75,200),random(360))}
if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {ShiftAway(oEarLeft.x,oEarLeft.y,irandom_range(75,200),random(360))}
}
} else {
mCreatureController.CloseToAnne -= 10 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 10 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.01 * mPlotController.ISModifier
ChangeEmotion("happy","down",0.3,25)
if mCreatureController.Triad > 0 {
ChangeEmotion("anger","up",0.3,25)
} else {
ChangeEmotion("fear","up",0.3,25)
}
if Chance(45) {
LittleJump()
}
if Chance(75 
* ReactChance()) {
MoveBackForwardUnCapped("retreat",15,irandom_range(20,40))
} else {
if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {ShiftAway(oEarLeft.x,oEarLeft.y,irandom_range(75,200),random(360))}
if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {ShiftAway(oEarLeft.x,oEarLeft.y,irandom_range(75,200),random(360))}
}
if Chance(25 
* ReactChance()) {
VocaliseChance(100)
}
if Chance(35 
* ReactChance()) {
RandomShake()
}
}

mDriveCollectionMaster.alarm[1] = 60
HeardInEarLoud = false
}

//----------------------------------------------------------------

//Whisper/Talk In Ear
if HeardInEar = true {
ChanceToWake(5)
if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {oEarLeft.BaseRedness += 0.15}
if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {oEarRight.BaseRedness += 0.15}
if Chance(25) {
StartCheekTwitchLeftBehaviour()
StartCheekTwitchRightBehaviour()
}
if Chance(25 - (20 * mCreatureController.Triad)) {
HoldBreathFor(irandom_range(20,80))
}
mDriveCollectionMaster.BaseBreathRate += ((0.0002 / 100) * mCreatureController.Lust)
if Chance(mCreatureController.Lust) {
RandomShake()
}
StopYawnBehaviour()
StopXYMove()
StopMoveInOut()
StopVocalisation()
if Chance(25){LittleJump()}
if IsInRitual() {
mCreatureController.BaseLust += 8 * mPlotController.ISModifier
mCreatureController.BaseResistance -= 8 * mPlotController.ISModifier
mCreatureController.BaseTrust += 2 * mPlotController.ISModifier
if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {MoveToXY(oEarLeft.x,oEarLeft.y,30,mInterfaceController.CurrentView,10)}
if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {MoveToXY(oEarRight.x,oEarRight.y,30,mInterfaceController.CurrentView,10)}
} else {
mCreatureController.BaseLust += 8 * mPlotController.ISModifier
mCreatureController.BaseResistance -= 8 * mPlotController.ISModifier
mCreatureController.BaseTrust += 2 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.005 * mPlotController.ISModifier
if mCreatureController.Triad < -0.5 and Chance(40 
* ReactChance()) {
MoveBackForward("retreat",10,irandom_range(5,15))
}
}

mDriveCollectionMaster.alarm[1] = 60
HeardInEar = false
}
}
}

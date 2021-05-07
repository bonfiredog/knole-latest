///PepperTouchingReactions()

if mDriveCollectionMaster.RealReactionsOn = true {

//If The Pepper Reaches Them...
if mCreatureController.Alive > 0 and mBehavioursDeliberative.PercentForward >= 60 {


//General Stuff (even if not new)

mCreatureController.Dirt += 1
mCreatureController.BaseAlive -= 0.1
TwitchIfNearBP(x,y,500)
MakeRedMark(x,y)
ChanceToWake(5)
TwitchRun(irandom_range(10,20))
if Chance(40){RandomShake()}
mCreatureController.BaseWenRateLower -= 20  * mPlotController.ISModifier
mCreatureController.BaseWenRateHigher -= 20  * mPlotController.ISModifier
mCreatureController.BasePain -= 2  * mPlotController.ISModifier
mCreatureController.BaseResistance -= 1  * mPlotController.ISModifier
mCreatureController.BaseStress += 2  * mPlotController.ISModifier
mCreatureController.BaseTiredness += 2  * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 2  * mPlotController.ISModifier

if IsInRitual() = false {
ChangeEmotion("happy","down",3,3 - (2 * mCreatureController.Triad))
ChangeEmotion("anger","up",3,3 - ((2 * mCreatureController.Triad)))
ChangeEmotion("shame","up",3,3 - ((2 * mCreatureController.Triad)))
if mDriveCollectionMaster.PepperTouchTimer <= 0 {
if Chance(30 + ((30 / 100) * mEmotionSubController.AngerActivation)) {
Dir = random(360)
Len = irandom_range(30,50)
MoveToXY(x + lengthdir_x(Len,Dir),
y + lengthdir_y(Len,Dir),
irandom_range(40,70),
mInterfaceController.CurrentView,
50
)
}
}
}


//CAULDRON
if place_meeting(x,y,mCaulParent) {
mCreatureController.BaseLust += 3  * mPlotController.ISModifier
mDriveCollectionMaster.BaseWibbleTimer -= 100
oCaulJug.CankerWobbleBase += 0.5
StartCaulVibrateBehaviour(60)
ShakeCaul(2,30)
oCaulJug.BaseCankerRate -= 20
}



//NOSE
if place_meeting(x,y,mNoseParent) {
mDriveCollectionMaster.SneezeTimer -= 500
if Chance(40) {
StartSneezeBehaviour(irandom_range(6,8),irandom_range(10,20),irandom_range(20,30),choose(-1,-1,-1,1))
} else {
StartSniffBehaviour(10,10,20,4)
StartTwitchNoseSideBehaviour(irandom_range(10,35))
StartCheekTwitchLeftBehaviour()
StartCheekTwitchRightBehaviour()
oNose1.RednessTemp += 0.2
TwitchRun(irandom_range(5,10))
instance_destroy()
}
}

//MOUTH
if place_meeting(x,y,mMouthParent) {
if mBehavioursReactive.YawningActive = true {
StopYawnBehaviour()
}
StartCheekTwitchLeftBehaviour()
StartCheekTwitchRightBehaviour()
StartOpenMouthBehaviour(0.2,100)
mDriveCollectionMaster.CoughTimer -= 500

if Chance(70) {
StartCoughBehaviour()
}
TwitchRun(irandom_range(5,10))

instance_destroy() 
}

//EYES
if place_meeting(x,y,oEyeballLeft) {
if Chance(50){EyeSquint(2,true,irandom_range(120,200))}
if Chance(70) {
NumberOfBlinks(irandom_range(20,30))
} else {
StartWinkBehaviour("left")
}
if Chance(50) {
LittleJump()
}
TwitchRun(irandom_range(5,10))
mCreatureController.Tiredness += 4
instance_destroy()
}


if place_meeting(x,y,oEyeballRight) {
if Chance(50){EyeSquint(2,true,irandom_range(120,200))}

if Chance(70) {
NumberOfBlinks(irandom_range(20,30))
} else {
StartWinkBehaviour("right")
}
if Chance(50) {
LittleJump()
}
TwitchRun(irandom_range(5,10))
mCreatureController.Tiredness += 4
instance_destroy()
}

//BELL SOUNDER

if place_meeting(x,y,oBellSounder) and oBellSounder.Broken = false {
with oBellSounder {
StartedTolling = true 
NumberOfTolls = 1
TollStart = false
}
}


//WOUNDS
if place_meeting(x,y,oWound) or place_meeting(x,y,oStabWound) {
mDriveCollectionMaster.CutReact = true
instance_destroy()
}

}
}



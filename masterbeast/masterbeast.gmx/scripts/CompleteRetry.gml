///CompleteRetry(drive)

switch argument0 {

//FALLING ASLEEP
case "fallasleep":
if SleepChanceTimer <= 0 {
if mBehavioursReactive.Sleeping = true {
//Succeed
mCreatureController.Stress -= 4
//ChangeEmotion("happy","up",0.4,10)
//ChangeEmotion("anger","down",0.4,6)
Drive1Cooldown = 10000
Drive1ChanceCooldown = 10000
ResettingDrives("fallasleep")
alarm[1] = 400
} else {
//Fail
Drive1Cooldown = 4000
Drive1ChanceCooldown = 4000
alarm[1] = 400
//ChangeEmotion("anger","up",0.3,20)
//mCreatureController.BaseStress += 10 * mDriveCollectionMaster.ISModifier
if Chance(mCreatureController.Tiredness){RandomVoc(0.6)}
for (i = 0; i < irandom_range(3,6); i++) {
RandomTwitch()
}
BaseBreathRate += 0.0002
ResettingDrives("fallasleep")
}
}
break;
//------------------------------

//PLAYER LEAVE
case "playerleave":

if SeenPlayerTimer <= 0
or (LeaveTimer >= LeaveThreshold and SeenPlayerTimer <= 200)
{
//Succeed
Drive2Cooldown = 4000
Drive2ChanceCooldown = 4000
alarm[1] = 400
mCreatureController.BaseStress -= 2 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.09 * mPlotController.ISModifier
mCreatureController.BaseResistance += 10 * mPlotController.ISModifier
ChangeEmotion("happy","up",0.4,15)
ChangeEmotion("fear","down",0.3,10)
VocaliseChance(50)
//ChangeEmotion("sad","up",0.4,8)
mCreatureController.CloseToAnne -= 5 * mPlotController.ISModifier
ResettingDrives("playerleave")
} else {
//Fail
Drive2Cooldown = 4000
Drive2ChanceCooldown = 4000
//ChangeEmotion("anger","up",0.5,10)
VocaliseChance(40)
//ChangeEmotion("fear","up",0.5,8)
//mCreatureController.BaseSubIntent -= 0.1 * mPlotController.ISModifier
//mCreatureController.CloseToAnne += 5 * mPlotController.ISModifier
//mCreatureController.BaseTrust -= 5 * mPlotController.ISModifier
alarm[1] = 400
ResettingDrives("playerleave")
}
break;
//------------------------------

//PLAYER COME
case "playercome":
if PCTimerStarted = true and PCTimer >= PCTimerThreshold {

//Succeed
if NoInteractionTimer < 200 {
Drive3Cooldown = 4000
Drive3ChanceCooldown = 4000
alarm[1] = 400
//ChangeEmotion("happy","up",20,20 + ((20 * mCreatureController.Triad)))
//ChangeEmotion("sad","down",10,10 + ((10 * mCreatureController.Triad)))
//ChangeEmotion("anger","down",15,15 + ((15 * mCreatureController.Triad)))
//ChangeEmotion("shame","up",10,10 - ((10 *mCreatureController.Triad)))
ResettingDrives("playercome")
VocaliseChance(40)
RandomShake()
} else {
//Just Fail
if mCreatureController.Triad > 0 {
//ChangeEmotion("shame","up",0.4,5)
}
//ChangeEmotion("sad","up",0.4,10)
//ChangeEmotion("anger","up",0.2,5 - (5 * mCreatureController.Triad))
//ChangeEmotion("fear","up",0.2,5)
mCreatureController.BaseSubIntent -= 0.3 * mPlotController.ISModifier
VocaliseChance(70)
if Chance(20){StartNumberSniffsBehaviour(irandom_range(1,3))}
BaseBreathRate += 0.0005
if Chance(10){EyeSquint(2,true,irandom_range(30,60))}
Drive3Cooldown = 4000
Drive3ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("playercome")
}
}

break;


//------------------------------

//FLEE
case "flee":
if mBehavioursDeliberative.MovingActive = false {
if mBehavioursDeliberative.PercentForward <= 10 {

//Succeed
Drive4Cooldown = 10000
Drive4ChanceCooldown = 10000
alarm[1] = 400
ResettingDrives("flee")

} else {
//Fail Final

if mCreatureController.Triad < 0 {
//ChangeEmotion("fear","up",0.3,9)
} else {
//ChangeEmotion("anger","up",0.3,9)
}
//ChangeEmotion("happy","down",0.3,5)
//mCreatureController.BaseTrust -= 5 * mPlotController.ISModifier
//mCreatureController.BaseResistance += 6 * mPlotController.ISModifier
//mCreatureController.CloseToAnne += 8 * mPlotController.ISModifier
//mCreatureController.BasePain += 5 * mPlotController.ISModifier
//mCreatureController.BaseLust += 5 * mPlotController.ISModifier
Drive4Cooldown = 4000
Drive4ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("flee")

}
} 
break;

//------------------------------

//------------------------------
//TODEFAULTPOS
case "todefaultpos":
if mBehavioursDeliberative.XYMove = false {
if mInterfaceController.CurrentView = MacroView and  
(view_yview[mInterfaceController.CurrentView] >= 900 and view_yview[mInterfaceController.CurrentView] <= 1100)
{
//Succeed
Drive6Cooldown = 6000
Drive6ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("todefaultpos")
} else {
//Fail Always
//mCreatureController.BaseResistance += 10 * mPlotController.ISModifier
//mCreatureController.CloseToAnne += 7 * mPlotController.ISModifier
//ChangeEmotion("anger","up",0.3,5)
//mCreatureController.BaseTrust -= 6 * mPlotController.ISModifier
//mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
VocaliseChance(40)
RandomShake()
ResettingDrives("todefaultpos")
Drive6Cooldown = 4000
Drive6ChanceCooldown = 4000
alarm[1] = 400
}
}

break;

//------------------------------

//------------------------------

//GOTOEAT
case "gotoeat":
if mBehavioursDeliberative.MovingActive = false and GoneAway = true and mBehavioursDeliberative.PercentForward <= 5
{


//Succeed
//mCreatureController.BaseTrust += 10 * mPlotController.ISModifier
//mCreatureController.BaseSubIntent += 0.1 * mPlotController.ISModifier
//ChangeEmotion("happy","up",0.3,10)
//ChangeEmotion("angry","down",0.3,10)
//ChangeEmotion("fear","down",0.3,10)
mCreatureController.BaseResistance -= 10 * mPlotController.ISModifier
Drive8Cooldown = 4000
Drive8ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("gotoeat")
} else {
//Fail Always
mCreatureController.BaseStress += 4 * mDriveCollectionMaster.ISModifier
VocaliseChance(35)
if Chance(35){LittleJump()}
//mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
//mCreatureController.BaseSubIntent -= 0.04 * mPlotController.ISModifier
//mCreatureController.CloseToAnne -= 4 * mPlotController.ISModifier
//ChangeEmotion("happy","down",0.3,4)
//ChangeEmotion("anger","up",0.3,5)
if Chance(25){StartNumberSniffsBehaviour(irandom_range(1,2))}
Drive8Cooldown = 4000
RandomShake()
Drive8ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("gotoeat")
}
break;


//------------------------------

//DOZE
case "doze":
if Dozing = true {
//Succeed
Drive10Cooldown = 4000
Drive10ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("doze")
} else {
//Fail Always
NumberOfBlinks(irandom_range(3,4))
//mCreatureController.BaseTrust -= 5 * mPlotController.ISModifier
//mCreatureController.BaseSubIntent -= 0.6 * mPlotController.ISModifier
//mCreatureController.BaseTiredness += 4 * mPlotController.ISModifier
//ChangeEmotion("anger","up",0.3,4)
//mCreatureController.BaseStress += 4 * mPlotController.ISModifier
Drive10Cooldown = 4000
Drive10ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("doze")
}
break;

//------------------------------

//STROKE NOSE
case "strokenose":
if StrokeNoseTimer <= 0 {
if RubTimer >= 100 {

//Succeed
ChangeEmotion("happy","up",0.3,5)
ChangeEmotion("anger","down",0.3,5)
ChangeEmotion("sad","down",0.3,5)
ChangeEmotion("shame","down",0.3,5)
mCreatureController.BaseStress -= 4 * mPlotController.ISModifier
mCreatureController.BaseTiredness += 4 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.05 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 4 * mPlotController.ISModifier
mCreatureController.BaseResistance = 5  * mPlotController.ISModifier
mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
StartCaulVibrateBehaviour(irandom_range(20,80))
if Chance(30){StartNumberSniffsBehaviour(irandom_range(1,2))}
MoveToXY(500,1000,irandom_range(15,35),MacroView,irandom_range(15,35))
VocaliseChance(40)
Drive12Cooldown = 4000
Drive12ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("strokenose")

} else {
//Fail Always
//mCreatureController.BaseStress += 5 * mPlotController.ISModifier
//mCreatureController.BaseLust += 5 * mPlotController.ISModifier
//mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
//mCreatureController.CloseToAnne -= 5 * mPlotController.ISModifier
//mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
//mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
//ChangeEmotion("happy","down",0.3,5)
//ChangeEmotion("anger","up",0.3,5)
//ChangeEmotion("sad","up",0.3,5)
if mCreatureController.Triad > 0 {
//ChangeEmotion("shame","up",0.3,10)
}
if Chance(30){StartNumberSniffsBehaviour(irandom_range(1,2))}
if Chance(40){StartShiverBehaviour(random_range(0.3,0.5),irandom_range(10,20),irandom_range(2,4))}
VocaliseChance(40)
Drive12Cooldown = 4000
Drive12ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("strokenose")
}
}

break;

//------------------------------

//INSPECT MANSION
case "inspectmansion":


break;

//------------------------------

//CLEAN SKIN
case "cleanskin":

if mInterfaceController.Cleaning = true  {
//Succeed
VocaliseChance(75)
ChangeEmotion("happy","up",0.3,15)
ChangeEmotion("shame","down",0.3,10)
mCreatureController.BaseTrust += 10 * mPlotController.ISModifier
mCreatureController.BaseStress -= 10 * mPlotController.ISModifier
Drive15Cooldown = 4000
Drive15ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("cleanskin")
}

if CSAttemptTimer <= 0 and mInterfaceController.Cleaning != true {
if Chance(40){StartNumberSniffsBehaviour(1)}
if Chance(30){MoveBackForward("retreat",15,irandom_range(5,15))}
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.6),irandom_range(5,15),irandom_range(3,5))}
//ChangeEmotion("happy","down",0.3,4)
//ChangeEmotion("anger","up",0.3,4)
//ChangeEmotion("shame","up",0.3,4)
//ChangeEmotion("sad","up",0.3,4)
//mCreatureController.BaseStress += 4 * mPlotController.ISModifier
//mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
VocaliseChance(70)
Drive15Cooldown = 4000
Drive15ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("cleanskin")
}

break;

//------------------------------

//PLAYER GET OFF
case "playergetoff":

if PGFTimer <= 0 {
if mInterfaceController.PressBegun = false {
//Succeed
for (i = 0; i< irandom_range(6,25); i++) {
RandomTwitch()
}
mCreatureController.BaseStress += 3 * mPlotController.ISModifier
mCreatureController.BaseLust += 3 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.04 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 3 * mPlotController.ISModifier
mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
ChangeEmotion("happy","up",0.3,15)
ChangeEmotion("anger","down",0.3,5)
ChangeEmotion("shame","up",0.3,15)
ChangeEmotion("fear","down",0.3,5)
Drive16Cooldown = 4000
Drive16ChanceCooldown = 4000
ResettingDrives("playergetoff")
alarm[1] = 400
} else {
//Fail Always
MoveBackForwardUnCapped("retreat",15,45)
VocaliseChance(85)
for (i = 0; i< irandom_range(6,25); i++) {
RandomTwitch()
}
//mCreatureController.BaseStress -= 3 * mPlotController.ISModifier
//mCreatureController.BaseLust += 3 * mPlotController.ISModifier
//mCreatureController.BaseSubIntent -= 0.04 * mPlotController.ISModifier
//mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
//mCreatureController.BaseTrust -= 4 * mPlotController.ISModifier
//ChangeEmotion("happy","down",0.3,15)
//ChangeEmotion("anger","up",0.3,5)
//ChangeEmotion("shame","up",0.3,15)
//ChangeEmotion("fear","up",0.3,5)
Drive16Cooldown = 4000
Drive16ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("playergetoff")
}
}
break;


//------------------------------

//TOUCH CAUL
case "touchcaul":

if (TCAttemptTimer <= 0 and TCTouchTimer >= 200) or
TCTouchTimer >= 200
{
//Success
VocaliseChance(75)
for (i =0; i < irandom_range(10,25);i++) {
RandomTwitch()
}
ChangeEmotion("happy","up",0.3,25)
ChangeEmotion("shame","down",0.3,20)
ChangeEmotion("fear","down",0.3,20)
ChangeEmotion("anger","down",0.3,10)
with mCreatureController {
BaseLust -= 25 * mPlotController.ISModifier
BaseStress -= 10 * mPlotController.ISModifier
BaseTiredness += 8 * mPlotController.ISModifier
BaseSubIntent += 0.3 * mPlotController.ISModifier
BaseTrust += 10 * mPlotController.ISModifier
CloseToAnne += 15 * mPlotController.ISModifier
BaseResistance -= 15 * mPlotController.ISModifier
}
BaseBreathRate -= 0.04
Drive18Cooldown = 4000
Drive18ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("touchcaul")
}

if TCAttemptTimer <= 0 and TCTouchTimer < 200 {
//Fail Always
VocaliseChance(60)
for (i =0; i < irandom_range(10,25);i++) {
RandomTwitch()
}
//ChangeEmotion("anger","up",0.3,5)
//ChangeEmotion("shame","up",0.3,5)
//ChangeEmotion("sad","up",0.3,5)
//ChangeEmotion("happy","down",0.3,5)
with mCreatureController {
//BaseLust -= 6 * mPlotController.ISModifier
//BaseStress += 4 * mPlotController.ISModifier
//BaseTrust -= 4 * mPlotController.ISModifier
//BaseSubIntent -= 0.04 * mPlotController.ISModifier
//CloseToAnne -= 4 * mPlotController.ISModifier
}
if Chance(35){StartShiverBehaviour(0.3,irandom_range(10,20),irandom_range(3,6))}
BaseBreathRate -= 0.04
Drive18Cooldown = 4000
Drive18ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("touchcaul")
}
break;

//------------------------------

//PLAYER TOUCH
case "playertouch":
if (PTAttemptTimer <= 0 and PTTouchTimer >= 200)
or PTTouchTimer >= 200 {
//Succeed
ChangeEmotion("happy","up",0.3,10)
ChangeEmotion("anger","down",0.3,10)
ChangeEmotion("sad","down",0.3,10)
ChangeEmotion("shame","down",0.3,10)
with mCreatureController {
CloseToAnne += 5 * mPlotController.ISModifier
BaseSubIntent += 0.04 * mPlotController.ISModifier
BaseResistance -= 4 * mPlotController.ISModifier
BaseTrust += 5 * mPlotController.ISModifier
BaseStress -= 5 * mPlotController.ISModifier
}
Drive21Cooldown = 4000
Drive21ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("playertouch")
}

if (PTAttemptTimer <= 0 and PTTouchTimer < 200)
{
//Fail Always
with mCreatureController {
BaseStress += 3 * mPlotController.ISModifier
BaseSubIntent -= 0.03 * mPlotController.ISModifier
CloseToAnne -= 3 * mPlotController.ISModifier
BaseResistance += 4 * mPlotController.ISModifier
BaseTrust -= 4 * mPlotController.ISModifier
}
//ChangeEmotion("happy","down",0.3,3)
//ChangeEmotion("sad","up",0.3,3)
//ChangeEmotion("anger","up",0.3,3)
//ChangeEmotion("shame","up",0.3,3)
if Chance(50){MoveBackForward("retreat",irandom_range(15,25),irandom_range(5,10))}
if Chance(50){EyeSquint(irandom_range(1,3),true,irandom_range(20,40))}
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.5),irandom_range(5,15),irandom_range(5,10))}
VocaliseChance(60)
Drive21Cooldown = 4000
Drive21ChanceCooldown = 4000
alarm[1] = 400
ResettingDrives("playertouch")
}

break;
}

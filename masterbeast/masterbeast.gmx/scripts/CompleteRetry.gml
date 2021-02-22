///CompleteRetry(drive)

switch argument0 {

//FALLING ASLEEP
case "fallasleep":
if SleepChanceTimer <= 0 {
if CurrentRetries > 0 {
//Fail & Retry
if mBehavioursReactive.Sleeping = false {
CurrentRetries -= 1
ChangeEmotion("anger","up",0.3,5)
mCreatureController.BaseStress += 4
if Chance(mCreatureController.Tiredness){RandomVoc(0.2)}
if Chance(mCreatureController.Tiredness - 25){StartNumberSniffsBehaviour(irandom_range(1,3))}
BaseBreathRate += 0.2
for (i = 0; i < irandom_range(3,6); i++) {
RandomTwitch()
}
//Succeed
} else {
mCreatureController.Stress -= 4
ChangeEmotion("happy","up",0.4,10)
ChangeEmotion("anger","down",0.4,6)
Drive1Cooldown = 2000
alarm[1] = 0
}
} else {
//Fail
Drive1Cooldown = 2000
alarm[1] = 0
ChangeEmotion("anger","up",0.3,20)
mCreatureController.BaseStress += 10
if Chance(mCreatureController.Tiredness){RandomVoc(0.6)}
for (i = 0; i < irandom_range(3,6); i++) {
RandomTwitch()
}
BaseBreathRate += 0.4
}
ResettingDrives("fallasleep")
}
break;
//------------------------------

//PLAYER LEAVE
case "playerleave":
if LeaveTimer > LeaveThreshold {
if CurrentRetries > 0 {
//Fail & Retry
if SeenPlayerTimer >= 100 {
CurrentRetries -= 1
ChangeEmotion("anger","up",0.5,10)
VocaliseChance(40)
ChangeEmotion("fear","up",0.5,8)
mCreatureController.BaseSubIntent -= 0.1
mCreatureController.CloseToAnne += 5
mCreatureController.BaseTrust -= 5
//Succeed
} else {
Drive2Cooldown = 2000
alarm[1] = 0
mCreatureController.BaseStress -= 2
mCreatureController.BaseSubIntent += 0.09
mCreatureController.BaseResistance += 10
ChangeEmotion("happy","up",0.4,15)
ChangeEmotion("fear","down",0.3,10)
VocaliseChance(50)
ChangeEmotion("sad","up",0.4,8)
mCreatureController.CloseToAnne -= 5

}
} else {
//Fail
Drive2Cooldown = 2000
ChangeEmotion("anger","up",0.5,10)
VocaliseChance(40)
ChangeEmotion("fear","up",0.5,8)
mCreatureController.BaseSubIntent -= 0.1
mCreatureController.CloseToAnne += 5
mCreatureController.BaseTrust -= 5
alarm[1] = 0
}
ResettingDrives("playerleave")
}
break;
//------------------------------

//PLAYER COME
case "playercome":
if PCTimer > PCTimerThreshold {
if CurrentRetries > 0 {
//Fail & Retry
CurrentRetries -= 1
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.4,3)
}
ChangeEmotion("sad","up",0.4,10)
ChangeEmotion("anger","up",0.2,5 - (5 * mCreatureController.Triad))
ChangeEmotion("fear","up",0.2,5)
mCreatureController.BaseSubIntent -= 0.1
VocaliseChance(40)
if Chance(50){StartNumberSniffsBehaviour(irandom_range(1,3))}
BaseBreathRate += 0.05
if Chance(40){EyeSquint(2,true,irandom_range(30,60))}
} else {
//Just Fail
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.4,5)
}
ChangeEmotion("sad","up",0.4,10)
ChangeEmotion("anger","up",0.2,5 - (5 * mCreatureController.Triad))
ChangeEmotion("fear","up",0.2,5)
mCreatureController.BaseSubIntent -= 0.3
VocaliseChance(70)
if Chance(20){StartNumberSniffsBehaviour(irandom_range(1,3))}
BaseBreathRate += 0.05
if Chance(10){EyeSquint(2,true,irandom_range(30,60))}
Drive3Cooldown = 2000
alarm[1] = 0
}
} else {
if PlayerComeCheck = false {
if NoInteractionTimer = 0 {
if PlayerComeCheck = false {
PlayerComeCheckTimer = 20 {
PlayerComeCheck = true
}
}
}
} else if PlayerComeCheck = true {
if PlayerComeCheckTimer > 0 {
PlayerComeCheckTimer -= 1
if NoInteractionTimer <= 0 {
Drive3Cooldown = 2000
alarm[1] = 0
ChangeEmotion("happy","up",20,20 + ((20 * mCreatureController.Triad)))
ChangeEmotion("sad","down",10,10 + ((10 * mCreatureController.Triad)))
ChangeEmotion("anger","down",15,15 + ((15 * mCreatureController.Triad)))
ChangeEmotion("shame","up",10,10 - ((10 *mCreatureController.Triad)))
}
} else {
PlayerComeCheck = false
}
}
}
ResettingDrives("playercome")
break;


//------------------------------

//FLEE
case "flee":

if mBehavioursDeliberative.MovingActive = false {
if mBehavioursDeliberative.PercentForward > 0 {
//Fail Once
if CurrentRetries > 0 {
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",1,50)
}
CurrentRetries -= 1
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.3,5)
} else {
ChangeEmotion("anger","up",0.3,5)
}
ChangeEmotion("happy","down",0.3,5)

mCreatureController.BaseTrust -= 3
mCreatureController.BaseResistance += 3
mCreatureController.CloseToAnne += 5
mCreatureController.BasePain += 4
mCreatureController.BaseLust += 3
//Fail Final
} else {
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.3,9)
} else {
ChangeEmotion("anger","up",0.3,9)
}
ChangeEmotion("happy","down",0.3,5)

mCreatureController.BaseTrust -= 5
mCreatureController.BaseResistance += 6
mCreatureController.CloseToAnne += 8
mCreatureController.BasePain += 5
mCreatureController.BaseLust += 5
Drive4Cooldown = 2000
alarm[1] = 0
}
} else {
//Succeed
Drive4Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("flee")
}
break;

//------------------------------

//RETREAT
case "retreat":

if mBehavioursDeliberative.MovingActive = false {
if mBehavioursDeliberative.PercentForward > BackThreshold {
//Fail Once
if CurrentRetries > 0 {
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",1,30)
}
CurrentRetries -= 1
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.3,2)
} else {
ChangeEmotion("anger","up",0.3,2)
}
ChangeEmotion("happy","down",0.3,2)

mCreatureController.BaseTrust -= 1
mCreatureController.BaseResistance += 2
mCreatureController.CloseToAnne += 2
mCreatureController.BasePain += 1
mCreatureController.BaseLust += 1.5
mCreatureController.BaseSubIntent -= 0.02
//Fail Always
} else {
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.3,4)
} else {
ChangeEmotion("anger","up",0.3,4)
}
ChangeEmotion("happy","down",0.3,3)
mCreatureController.BaseTrust -= 2
mCreatureController.BaseResistance += 2
mCreatureController.CloseToAnne += 2
mCreatureController.BasePain += 2
mCreatureController.BaseLust += 2
mCreatureController.BaseSubIntent -= 0.02
Drive5Cooldown = 2000
alarm[1] = 0
}
} else {
//Succeed
Drive5Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("retreat")
}
break;

//------------------------------
//TODEFAULTPOS
case "todefaultpos":
if mBehavioursDeliberative.XYMove = false {
if mInterfaceController.CurrentView != MacroView or view_xview[mInterfaceController.CurrentView] != 0 or view_yview[mInterfaceController.CurrentView] != 1000 {
//Fail Once
if CurrentRetries > 0 {
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",1,20)
}
CurrentRetries -= 1

mCreatureController.BaseResistance += 7
mCreatureController.CloseToAnne += 5
ChangeEmotion("anger","up",0.3,3)
mCreatureController.BaseTrust -= 4
mCreatureController.BaseSubIntent -= 0.02
VocaliseChance(20)
//Fail Always
} else {
mCreatureController.BaseResistance += 10
mCreatureController.CloseToAnne += 7
ChangeEmotion("anger","up",0.3,5)
mCreatureController.BaseTrust -= 6
mCreatureController.BaseSubIntent -= 0.05
VocaliseChance(40)
}
} else {
//Succeed
Drive6Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("todefaultpos")
}
break;

//------------------------------
//COME FORWARD
case "comeforward":
if mBehavioursDeliberative.MovingActive = false {
if mBehavioursDeliberative.PercentForward < ForwardThreshold {
//Fail Once
if CurrentRetries > 0 {
if CurrentRetries = 3 {
LittleJump()
RandomTwitch()
RandomTwitch()
ChangeEmotion("surprise","up",1,25)
}
CurrentRetries -= 1
ChangeEmotion("fear","up",0.3,4)
ChangeEmotion("stress","up",0.3,4)
} else {
//Fail Always
ChangeEmotion("fear","up",0.3,6)
ChangeEmotion("stress","up",0.3,6)
VocaliseChance(70)
Drive7Cooldown = 2000
alarm[1] = 0
}
} else {
//Success
Drive7Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("comeforward")
}

break;

//------------------------------

//GOTOEAT
case "gotoeat":
if (MovingActive = false and mBehavioursDeliberative.PercentForward != 0 and GTEBreaks > 0)
or (mBehavioursDeliberative.PercentForward <= 0 and mBehavioursDeliberative.CrunchingActive = false)
{
//Fail Once
if CurrentRetries > 0 {
mCreatureController.BaseStress += 2
VocaliseChance(25)
if Chance(25){LittleJump()}
mCreatureController.BaseTrust -= 2
mCreatureController.BaseSubIntent -= 0.02
mCreatureController.CloseToAnne -= 4
ChangeEmotion("happy","down",0.3,3)
ChangeEmotion("anger","up",0.3,4)
if Chance(25){StartNumberSniffsBehaviour(irandom_range(1,2))}
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",0.3,25)
}
} else {
//Fail Always
mCreatureController.BaseStress += 4
VocaliseChance(35)
if Chance(35){LittleJump()}
mCreatureController.BaseTrust -= 4
mCreatureController.BaseSubIntent -= 0.04
mCreatureController.CloseToAnne -= 4
ChangeEmotion("happy","down",0.3,4)
ChangeEmotion("anger","up",0.3,5)
if Chance(25){StartNumberSniffsBehaviour(irandom_range(1,2))}
Drive8Cooldown = 2000
alarm[1] = 0
}
}

//Succeed
if (MovingActive = false and mBehavioursReactive.PercentForward <= 0 and mBehavioursDeliberative.CrunchingActive = true) {
mCreatureController.BasseTrust += 10
mCreatureController.BaseSubIntent += 0.1
ChangeEmotion("happy","up",0.3,10)
ChangeEmotion("angry","down",0.3,10)
ChangeEmotion("fear","down",0.3,10)
mCreatureController.BaseResistance -= 10
Drive8Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("gotoeat")
break;


//------------------------------

//DOZE
case "doze":
if Dozing = false and DozeTimer < DozeThreshold {
// Fail Once
if CurrentRetries > 0 {
CurrentRetries -= 1
NumberOfBlinks(irandom_range(3,4))
BreathType = "both"
mCreatureController.BaseTrust -= 3
mCreatureController.BaseSubIntent -= 0.4
mCreatureController.BaseTiredness += 3
ChangeEmotion("anger","up",0.3,4)
mCreatureController.BaseStress += 3
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",1,30)
}
} else {
//Fail Always
NumberOfBlinks(irandom_range(3,4))
BreathType = "both"
mCreatureController.BaseTrust -= 5
mCreatureController.BaseSubIntent -= 0.6
mCreatureController.BaseTiredness += 4
ChangeEmotion("anger","up",0.3,4)
mCreatureController.BaseStress += 4
Drive10Cooldown = 2000
alarm[1] = 0
}
}

//Succeed
if Dozing = true and DozeTimer >= DozeThreshold {
NumberOfBlinks(irandom_range(3,4))
BreathType = "both"
Dozing = false
ChangeEmotion("anger","down",0.3,10)
ChangeEmotion("fear","down",0.3,10)
ChangeEmotion("sad","down",0.3,10)
ChangeEmotion("shame","down",0.3,10)
BaseBreathRate -= 0.5
mCreatureController.BaseStress -= 10
mCreatureController.BaseTiredness -= 8
Drive10Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("doze")
break;

//------------------------------

//CLEAN GOUND
case "cleangound":
//Succeed
if instance_number(oGound) = 0 {
ChangeEmotion("happy","up",0.3,25)
ChangeEmotion("anger","down",0.3,10)
VocaliseChance(60)
if Chance(40){StartShiverBehaviour(2,irandom_range(10,20),irandom_range(5,10))}
with mCreatureController {
BaseTrust += 7
BaseSubIntent += 0.07
BaseResistance -= 10
CloseToAnne -= 15
BaseStress -= 10
}
Drive11Cooldown = 2000
alarm[1] = 0
ResettingDrives("cleangound")
}
if GoundTimer >= GoundTimerThreshold and
instance_number(oGound) > 0 {
//Fail Once 
if CurrentRetries > 0 {
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.4,3)
}
CurrentRetries -= 1
ChangeEmotion("anger","up",0.3,8)
mCreatureController.BaseStress += 7
mCreatureController.CloseToAnne += 3
mCreatureController.BaseSubIntent -= 0.04
NumberOfBlinks(irandom_range(2,5))
VocaliseChance(15)
if Chance(15){LittleJump()}
BaseBreathRate += 0.3
choose(
StartEyebrowTwitchRightBehaviour(),
StartEyebrowTwitchLeftBehaviour(),
StartTwitchNoseSideBehaviour(irandom_range(30,60))
)
} else {
//Fail Always
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.4,5)
}
ChangeEmotion("anger","up",0.3,10)
mCreatureController.BaseStress += 10
mCreatureController.CloseToAnne += 7
mCreatureController.BaseSubIntent -= 0.09
NumberOfBlinks(irandom_range(2,5))
VocaliseChance(15)
if Chance(15){LittleJump()}
BaseBreathRate += 0.3
choose(
StartEyebrowTwitchRightBehaviour(),
StartEyebrowTwitchLeftBehaviour(),
StartTwitchNoseSideBehaviour(irandom_range(30,60))
)
Drive11Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("cleangound")
}

//------------------------------

//STROKE NOSE
case "strokenose":
if StrokeNoseTimer <= 0 and RubTimer < RubTimerThreshold {
//Fail Once
if CurrentRetries > 0 {
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.4,3)
}
CurrentRetries -= 1
mCreatureController.BaseStress += 4
mCreatureController.BaseLust += 4
mCreatureController.BaseSubIntent -= 0.05
mCreatureController.CloseToAnne -= 4
mCreatureController.BaseResistance += 5
mCreatureController.BaseTrust -= 4
ChangeEmotion("happy","down",0.3,5)
ChangeEmotion("anger","up",0.3,5)
ChangeEmotion("sad","up",0.3,5)
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.3,10)
}
BreathType = "both"
if Chance(30){StartNumberSniffsBehaviour(irandom_range(1,2))}
VocaliseChance(40)
} else {
//Fail Always
mCreatureController.BaseStress += 5
mCreatureController.BaseLust += 5
mCreatureController.BaseSubIntent -= 0.05
mCreatureController.CloseToAnne -= 5
mCreatureController.BaseResistance += 5
mCreatureController.BaseTrust -= 4
ChangeEmotion("happy","down",0.3,5)
ChangeEmotion("anger","up",0.3,5)
ChangeEmotion("sad","up",0.3,5)
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.3,10)
}
BreathType = "both"
if Chance(30){StartNumberSniffsBehaviour(irandom_range(1,2))}
if Chance(40){StartShiverBehaviour(random_range(0.3,0.5),irandom_range(10,20),irandom_range(2,4))
VocaliseChance(40)
Drive12Cooldown = 2000
alarm[1] = 0
}
}
ResettingDrives("strokenose")
}
if RubTimer > RubTimerThreshold {
//Succeed
ChangeEmotion("happy","up",0.3,5)
ChangeEmotion("anger","down",0.3,5)
ChangeEmotion("sad","down",0.3,5)
ChangeEmotion("shame","down",0.3,5)
mCreatureController.BaseStress -= 4
mCreatureController.BaseTiredness += 4
mCreatureController.BaseSubIntent += 0.05
mCreatureController.CloseToAnne -= 4
mCreatureController.BaseResistance = 5
mCreatureController.BaseTrust -= 4
StartCaulVibrateBehaviour(irandom_range(20,80))
BreathType = "both"
if Chance(30){StartNumberSniffsBehaviour(irandom_range(1,2))}
VocaliseChance(40)
Drive12Cooldown = 2000
alarm[1] = 0
ResettingDrives("strokenose")
}
break;

//------------------------------

//INSPECT MANSION
case "inspectmansion":
if IMAttemptTimer <= 0 and (IMMarker1 = false) {
//Fail Once 
if CurrentRetries > 0 {
CurrentRetries -= 1
ChangeEmotion("happy","down",0.3,4)
ChangeEmotion("anger","up",0.3,4)
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.3,10)
}
mCreatureController.BaseResistance += 10
mCreatureController.BaseStress += 7
} else {
//Fail Always
ChangeEmotion("happy","down",0.3,4)
ChangeEmotion("anger","up",0.3,4)
if mCreatureController.Triad > 0 {
ChangeEmotion("shame","up",0.3,10)
}
mCreatureController.BaseResistance += 10
mCreatureController.BaseStress += 7
Drive13Cooldown = 2000
alarm[0] = 1

}
ResettingDrives("inspectmansion")
}
if IMMarker1 = true  and IMMarker2 = true {
//Succeed
Drive13Cooldown = 2000
alarm[0] = 1
ChangeEmotion("happy","up",0.3,10)
ChangeEmotion("anger","down",0.3,10)
ChangeEmotion("shame","down",0.3,10)
mCreatureController.BaseStress -= 7
ResettingDrives("inspectmansion")
}
break;

//------------------------------

//CLEAN SKIN
case "cleanskin":
if CSAttemptTimer <= 0 and mCreatureController.Dirt > CSDirtThreshold {
//Fail Once
if CurrentRetries > 0 {
CurrentRetries -= 1
if Chance(40){StartNumberSniffsBehaviour(1)}
if Chance(30){MoveBackForward("retreat",15,irandom_range(5,15))}
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.6),irandom_range(5,15),irandom_range(3,5))}
ChangeEmotion("happy","down",0.3,4)
ChangeEmotion("anger","up",0.3,4)
ChangeEmotion("shame","up",0.3,4)
ChangeEmotion("sad","up",0.3,4)
mCreatureController.BaseStress += 4
mCreatureController.BaseTrust -= 4
VocaliseChance(70)
} else {
if Chance(40){StartNumberSniffsBehaviour(1)}
if Chance(30){MoveBackForward("retreat",15,irandom_range(5,15))}
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.6),irandom_range(5,15),irandom_range(3,5))}
ChangeEmotion("happy","down",0.3,4)
ChangeEmotion("anger","up",0.3,4)
ChangeEmotion("shame","up",0.3,4)
ChangeEmotion("sad","up",0.3,4)
mCreatureController.BaseStress += 4
mCreatureController.BaseTrust -= 4
VocaliseChance(70)
Drive15Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("cleanskin")
}
if mCreatureController.Dirt <= CSDirtThreshold {
//Succeed
VocaliseChance(75)
ChangeEmotion("happy","up",0.3,15)
ChangeEmotion("shame","down",0.3,10)
mCreatureController.BaseTrust += 10
mCreatureController.BaseStress -= 10
Drive15Cooldown = 2000
alarm[1] = 0
ResettingDrives("cleanskin")
}
break;

//------------------------------

//PLAYER GET OFF
case "playergetoff":
if TimeSinceLastTouch > 150 {
//Succeed
for (i = 0; i< irandom_range(6,25); i++) {
RandomTwitch()
}
mCreatureController.BaseStress += 3
mCreatureController.BaseLust += 3
mCreatureController.BaseSubIntent -= 0.04
mCreatureController.CloseToAnne -= 3
mCreatureController.BaseResistance += 5
mCreatureController.BaseTrust -= 4
ChangeEmotion("happy","up",0.3,15)
ChangeEmotion("anger","down",0.3,5)
ChangeEmotion("shame","up",0.3,15)
ChangeEmotion("fear","down",0.3,5)
Drive16Cooldown = 2000
ResettingDrives("playergetoff")
alarm[1] = 0
}
if PGFTimer <= 0 and TimeSinceLastTouch < 150 {
if CurrentRetries > 0 {
CurrentRetries -= 1
//Fail Once
VocaliseChance(85)
for (i = 0; i< irandom_range(6,25); i++) {
RandomTwitch()
}
mCreatureController.BaseStress -= 3
mCreatureController.BaseLust += 3
mCreatureController.BaseSubIntent -= 0.04
mCreatureController.BaseResistance += 5
mCreatureController.BaseTrust -= 4
ChangeEmotion("happy","down",0.3,15)
ChangeEmotion("anger","up",0.3,5)
ChangeEmotion("shame","up",0.3,15)
ChangeEmotion("fear","up",0.3,5)
} else {
//Fail Always
MoveBackForwardUnCapped("retreat",15,45)
VocaliseChance(85)
for (i = 0; i< irandom_range(6,25); i++) {
RandomTwitch()
}
mCreatureController.BaseStress -= 3
mCreatureController.BaseLust += 3
mCreatureController.BaseSubIntent -= 0.04
mCreatureController.BaseResistance += 5
mCreatureController.BaseTrust -= 4
ChangeEmotion("happy","down",0.3,15)
ChangeEmotion("anger","up",0.3,5)
ChangeEmotion("shame","up",0.3,15)
ChangeEmotion("fear","up",0.3,5)
Drive16Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("playergetoff")
}
break;


//------------------------------

//TOUCH CAUL
case "touchcaul":

if TCTouchTimer >= TCTouchTimerThreshold {
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
BaseLust -= 25
BaseStress -= 10
BaseTiredness += 8
BaseSubIntent += 0.3
BaseTrust += 10
CloseToAnne += 15
BaseResistance -= 15
}
BaseBreathRate -= 0.4
Drive18Cooldown = 2000
alarm[1] = 0
ResettingDrives("touchcaul")
}

if TCAttemptTimer <= 0 and TCTouchTimer < TCTouchTimerThreshold {
if CurrentRetries > 0 {
//Fail Once
CurrentRetries -= 1
VocaliseChance(45)
for (i =0; i < irandom_range(10,25);i++) {
RandomTwitch()
}
ChangeEmotion("anger","up",0.3,5)
ChangeEmotion("shame","up",0.3,5)
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",0.3,10)
}
ChangeEmotion("sad","up",0.3,5)
ChangeEmotion("happy","down",0.3,5)
with mCreatureController {
BaseLust -= 6
BaseStress += 4
BaseTrust -= 4
BaseSubIntent -= 0.04
CloseToAnne -= 4
}
if Chance(35){StartShiverBehaviour(0.3,irandom_range(10,20),irandom_range(3,6))}
BaseBreathRate += 0.3

} else {
//Fail Always
VocaliseChance(60)
for (i =0; i < irandom_range(10,25);i++) {
RandomTwitch()
}
VocaliseChance(45)
for (i =0; i < irandom_range(10,25);i++) {
RandomTwitch()
}
ChangeEmotion("anger","up",0.3,5)
ChangeEmotion("shame","up",0.3,5)
ChangeEmotion("sad","up",0.3,5)
ChangeEmotion("happy","down",0.3,5)
with mCreatureController {
BaseLust -= 6
BaseStress += 4
BaseTrust -= 4
BaseSubIntent -= 0.04
CloseToAnne -= 4
}
if Chance(35){StartShiverBehaviour(0.3,irandom_range(10,20),irandom_range(3,6))}
BaseBreathRate -= 0.4
Drive18Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("touchcaul")
}
break;

//------------------------------

//HAIR BRUSH
case "hairbrush":
if HBAttemptTimer <= 0 and BrushTimer < BrushTimerThreshold {
if CurrentRetries > 0 {
//Fail Once
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",1,15)
}
CurrentRetries -= 1
if Chance(50){StartShiverBehaviour(irandom_range(3,4),irandom_range(5,15),irandom_range(1,2))}
BaseBreathRate += 0.3
VocaliseChance(50)
ChangeEmotion("happy","down",0.3,5)
ChangeEmotion("anger","up",0.3,5)
with mCreatureController {
BaseTrust -= 5
BaseResistance += 7
CloseToAnne += 5
BaseSubIntent -= 0.04
BaseStress += 5
}
} else {
//Fail Always
if Chance(50){StartShiverBehaviour(irandom_range(3,4),irandom_range(5,15),irandom_range(1,2))}
BaseBreathRate += 0.3
VocaliseChance(50)
ChangeEmotion("happy","down",0.3,5)
ChangeEmotion("anger","up",0.3,5)
with mCreatureController {
BaseTrust -= 5
BaseResistance += 7
CloseToAnne += 5
BaseSubIntent -= 0.04
BaseStress += 5
}
Drive19Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("hairbrush")
}

if BrushTimer >= BrushTimerThreshold {
//Success
if Chance(70){StartShiverBehaviour(irandom_range(3,4),irandom_range(5,15),irandom_range(1,2))}
VocaliseChance(70)
if Chance(60){StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(60){StartYawnBehaviour()}
BaseBreathRate -= 0.5
StartCaulVibrateBehaviour(irandom_range(20,60))
ChangeEmotion("happy","up",0.3,10)
ChangeEmotion("anger","down",0.3,7)
ChangeEmotion("sad","down",0.3,7)
ChangeEmotion("shame","down",0.3,7)
with mCreatureController {
BaseSubIntent += 0.07
BaseTrust += 4
BaseStress -= 3
CloseToAnne -= 3
BaseResistance -= 6
}
Drive19Cooldown = 2000
alarm[1] = 0
ResettingDrives("hairbrush")
}
break;

//------------------------------

//PLAYER SPEAK
case "playerspeak":
if mCreatureController.HeardSound = true {
//Succeed
StopVocalisation()
HoldBreathFor(irandom_range(20,30))
if Chance(50 + (30 * mCreatureController.Triad)){NodUpDown(irandom_range(2,5))}
if mEmotionSubController.FearActivation > 50 or mCreatureController.Triad < 0 {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(5,10))
}
with mCreatureController {
BaseResistance -= 7
BaseTrust += 5
BaseStress -= 5
CloseToAnne -= 8
BaseSubIntent += 0.05
}
ChangeEmotion("fear","down",0.3,5)
ChangeEmotion("sad","down",0.3,5)
ChangeEmotion("happy","up",0.3,20)
Drive20Cooldown = 2000
alarm[1] = 0
ResettingDrives("playerspeak")
}

if PSAttemptTimer <= 0 {
//Fail Once 
if CurrentRetries > 0 {
if CurrentRetries = 3 {
ChangeEmotion("surprise","up",1,15)
}
CurrentRetries -= 1
VocaliseChance(75)
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.5),irandom_range(5,15),irandom_range(5,10))}
if Chance(50){StartNumberSniffsBehaviour(irandom_range(1,4))}
if Chance(50){EyeSquint(irandom_range(1,3),true,irandom_range(20,40))}
ChangeEmotion("happy","down",0.3,5)
if mCreatureController.Triad < 0 {
ChangeEmotion("fear","up",0.3,3)
} else {
ChangeEmotion("anger","up",0.3,3)
}
with mCreatureController {
CloseToAnne += 3
BaseSubIntent -= 0.03
BaseResistance += 5
BaseStress += 5
}
} else {
//Fail Always


Drive20Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("playerspeak")
}
break;


//------------------------------

//PLAYER TOUCH
case "playertouch":
if PTAttemptTimer <= 0 {
if CurrentRetries > 0 {
//Fail Once 
CurrentRetries -= 1
with mCreatureController {
BaseStress += 3
BaseSubIntent -= 0.03
CloseToAnne -= 3
BaseResistance += 4
BaseTrust -= 4
}
ChangeEmotion("happy","down",0.3,3)
ChangeEmotion("sad","up",0.3,3)
ChangeEmotion("anger","up",0.3,3)
ChangeEmotion("shame","up",0.3,3)
if Chance(50){MoveBackForward("retreat",irandom_range(15,25),irandom_range(5,10))}
if Chance(50){EyeSquint(irandom_range(1,3),true,irandom_range(20,40))}
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.5),irandom_range(5,15),irandom_range(5,10))}
VocaliseChance(60)
} else {
//Fail Always
with mCreatureController {
BaseStress += 3
BaseSubIntent -= 0.03
CloseToAnne -= 3
BaseResistance += 4
BaseTrust -= 4
}
ChangeEmotion("happy","down",0.3,3)
ChangeEmotion("sad","up",0.3,3)
ChangeEmotion("anger","up",0.3,3)
ChangeEmotion("shame","up",0.3,3)
if Chance(50){MoveBackForward("retreat",irandom_range(15,25),irandom_range(5,10))}
if Chance(50){EyeSquint(irandom_range(1,3),true,irandom_range(20,40))}
if Chance(50){StartShiverBehaviour(irandom_range(0.2,0.5),irandom_range(5,15),irandom_range(5,10))}
VocaliseChance(60)
Drive21Cooldown = 2000
alarm[1] = 0
}
ResettingDrives("playertouch")
}

if TimeSinceLastTouch < 1 {
//Succeed
ChangeEmotion("happy","up",0.3,10)
ChangeEmotion("anger","down",0.3,10)
ChangeEmotion("sad","down",0.3,10)
ChangeEmotion("shame","down",0.3,10)
with mCreatureController {
CloseToAnne += 5
BaseSubIntent += 0.04
BaseResistance -= 4
BaseTrust += 5
BaseStress -= 5
}
Drive21Cooldown = 2000
alarm[1] = 0
ResettingDrives("playertouch")
}





default:
alarm[1] = 0
break;
}

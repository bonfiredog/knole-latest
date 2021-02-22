//Stamping

//Movement

DesiredSpeed = (0.01 * WalkingSpeed) * ViewSpeedMod
SpeedChangeRate = 0.05
DirectionChangeRate = 5




if oShepherdParent.Born = true {
oShepherdBody.BaseY = y
}

if MasterEyesShut = false {
if oShepherdHead.EyesShut = true {
oShepherdHead.EyesShut = false
}
}


if Lifting = "right" {
if LiftDir = "up" {
with oShepherdLegRight {
if BendPercent < 100 {
BendPercent += (1 * oShepherdParent.WalkingSpeed)
} else if BendPercent >= 100 {
oShepherdParent.LiftDir = "down"
}
}
} else if LiftDir = "down" {
with oShepherdLegRight {
if BendPercent > 0 {
BendPercent -= (1 * oShepherdParent.WalkingSpeed)
} else if BendPercent <= 0 {
instance_create(FootprintPointX,FootprintPointY,sShepherdFootprint)
oShepherdParent.LiftDir = "up"
oShepherdParent.Lifting = "left"
}
}
}

} else if Lifting = "left" {
if LiftDir = "up" {
with oShepherdLegLeft {
if BendPercent < 100 {
BendPercent += (1 * oShepherdParent.WalkingSpeed)
} else if BendPercent >= 100 {
oShepherdParent.LiftDir = "down"
}
}
} else if LiftDir = "down" {
with oShepherdLegLeft {
if BendPercent > 0 {
BendPercent -= (1 * oShepherdParent.WalkingSpeed)
} else if BendPercent <= 0 {

instance_create(FootprintPointX,FootprintPointY,sShepherdFootprint)
oShepherdParent.LiftDir = "up"
oShepherdParent.Lifting = "right"
}
}
}
}


//Making Sure Back In Position First
if CrookReset = false {
if oShepherdCrook.ModX > 0 {
oShepherdCrook.ModX -= 1
} else if oShepherdCrook.ModX < 0 {
oShepherdCrook.ModX += 1
} else {
oShepherdCrook.ModX = 0
}

if oShepherdCrook.ModY > -1 {
oShepherdCrook.ModY -= 1
} else if oShepherdCrook.ModY < -1 {
oShepherdCrook.ModY += 1
} else {
oShepherdCrook.ModY = 0
}

if oShepherdCrook.RotateMod > 5 {
oShepherdCrook.RotateMod -= 5
} else if oShepherdCrook.RotateMod < -5 {
oShepherdCrook.RotateMod += 5
} else {
oShepherdCrook.RotateMod = 0
}

if oShepherdCrook.ModY = 0 and oShepherdCrook.RotateMod = 0 and oShepherdCrook.ModX = 0 {
CrookReset = true
}

} else if CrookReset = true {

if oShepherdCrook.ModY > -1 {
oShepherdCrook.ModY -= 1
} else if oShepherdCrook.ModY < -1 {
oShepherdCrook.ModY += 1
}


if CrookState != "stamping" and CrookState != "shaking" {
StartShaking(60,5)
}



if FleeStamped = false and 
SensedMole = true and point_distance(NearestMole.x,NearestMole.y,x,y) <= SenseRadius
{
StartStamping(irandom_range(3,5),4)
FleeStamped = true
}

if FleeStamped = true {
if SensedMole = false {
FleeStamped = false
}
}



}



if LineMod > 0 {
LineMod -= 10
}



if FleeChecked = false {
if instance_exists(SourceOfFear) {
if point_distance(x,y,SourceOfFear.x,SourceOfFear.y) <= view_wview[1] {
DesiredHeading = point_direction(SourceOfFear.x,SourceOfFear.y,x,y)
} else {
FleeChecked = true
}
} else {
FleeChecked = true
}
} else if FleeChecked = true {
if point_distance(x,y,oShepherdHome.x,oShepherdHome.y) > 500 {
ChangeDirection = irandom_range(1,15)
if ChangeDirection = 15 {
WanderModLower = CurrentHeading - 30
WanderModHigher = CurrentHeading + 30
DesiredHeading = irandom_range(WanderModLower,WanderModHigher)
}
} else {
DistanceToHome = point_distance(oShepherdBody.x,oShepherdBody.y + 14,oShepherdHome.x,oShepherdHome.y)
if DistanceToHome > 1 {
DesiredHeading = point_direction(oShepherdBody.x,oShepherdBody.y + 14,oShepherdHome.x,oShepherdHome.y)
CurrentHeading = DesiredHeading
} else if DistanceToHome < 1 {
RetreatedToHome = true
StartSitting()
}
}
}


if FleeTimer > 0 {
FleeTimer -= 1
} else if FleeTimer <= 0 {
FleeTimer = 0
SourceOfFear = noone
FleeStamped = false
StartStanding()
RetreatedToHome = false
}


with oShepherdBag {
if MoveSwingDir = "left" {
if image_angle > LeftSwingMax {
MoveSwingMod -= (1 + (oShepherdParent.WalkingSpeed / 20)) 
} else if image_angle <= LeftSwingMax {
MoveSwingDir = "right"
}
} else if MoveSwingDir = "right" {
if image_angle < RightSwingMax {
MoveSwingMod += (1 + (oShepherdParent.WalkingSpeed / 20)) 
} else if image_angle >= RightSwingMax {
MoveSwingDir = "left"
}
}
}


with oShepherdBody {
if SitYMod > 0 {
SitYMod -= 1
}
}

with oShepherdLegLeft {
if SitYMod > 0 {
SitYMod -= 1
}
}

with oShepherdLegRight {
if SitYMod > 0 {
SitYMod -= 1
}
}



if oShepherdHead.RotateMod > 1 {
oShepherdHead.RotateMod -= 1 
} else if oShepherdHead.RotateMod < -1 {
oShepherdHead.RotateMod += 1
} else {
oShepherdHead.RotateMod = 0
}



//Speeds & Values
DesiredSpeed = (0.01 * WalkingSpeed) * ViewSpeedMod
SpeedChangeRate = 0.05
DirectionChangeRate = 5

if oShepherdParent.Born = true {
oShepherdBody.BaseY = y
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





if CrookState = "none" {

//Making Sure Back In Position First
if CrookReset = false {
if oShepherdCrook.ModX > 0 {
oShepherdCrook.ModX -= 1
} else if oShepherdCrook.ModX < 0 {
oShepherdCrook.ModX += 1
} else {
oShepherdCrook.ModY = 0
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

//Jiggling Crook

with oShepherdCrook {
if JiggleDir = "left" {
if RotateMod <= JiggleTarLeft {
RotateMod += (1 * (oShepherdParent.WalkingSpeed / 30))
} else {
JiggleDir = "right"
JiggleTarRight = random_range(-2,-5)
}
} else if JiggleDir = "right" {
if RotateMod >= JiggleTarRight {
RotateMod -= (1 * (oShepherdParent.WalkingSpeed / 30))
} else {
JiggleDir = "left"
JiggleTarLeft = random_range(2,5)
}
}
}
}

}



if MasterEyesShut = false {
if oShepherdHead.EyesShut = true {
oShepherdHead.EyesShut = false
}
}


with oShepherdBag {
if MoveSwingDir = "left" {
if image_angle > LeftSwingMax {
MoveSwingMod -= (1 + (oShepherdParent.WalkingSpeed / 5)) 
} else if image_angle <= LeftSwingMax {
MoveSwingDir = "right"
}
} else if MoveSwingDir = "right" {
if image_angle < RightSwingMax {
MoveSwingMod += (1 + (oShepherdParent.WalkingSpeed / 5)) 
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


if LineMod > 0 {
LineMod -= 10
}


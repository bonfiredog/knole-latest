
DesiredSpeed = 0
SpeedChangeRate = 0.05
DirectionChangeRate = 5

with oShepherdCrook {
if RotateMod != DesiredUpright {
if RotateMod < DesiredUpright {
RotateMod += 5
} 
if RotateMod > DesiredUpright {
RotateMod -= 5
}
}

if ModX < 6 {
ModX += 1
} else if ModX > 6 {
ModX -= 1
}

if ModY < -13 {
ModY += 1
} else if ModY > -13 {
ModY -= 1
}
}

with oShepherdBody {
if SitYMod < 14 {
SitYMod += 1
}
}

with oShepherdLegLeft {
if SitYMod < 10 {
SitYMod += 1
}
}

with oShepherdLegRight {
if SitYMod < 10 {
SitYMod += 1
}
}

if oShepherdHead.EyesShut = false {
oShepherdHead.EyesShut = true
}

if LineMod > 0 {
LineMod -= 10
}

if Facing = "right" {
DesiredHeading = 280
} else if Facing = "left" {
DesiredHeading = 260
}


with oShepherdBag {
if MoveSwingMod != 0 {
if MoveSwingMod > 8 {
MoveSwingMod -= (1 + (oShepherdParent.WalkingSpeed / 5))
} else if MoveSwingMod < -8 {
MoveSwingMod += (1 + (oShepherdParent.WalkingSpeed / 5))
} else {
MoveSwingMod = 0
}
}
}


DesiredSpeed = 0
SpeedChangeRate = 0.05
DirectionChangeRate = 5

if MasterEyesShut = false {
if oShepherdHead.EyesShut = true {
oShepherdHead.EyesShut = false
}
}

with oShepherdLegLeft {
if BendPercent > 0 {
BendPercent -= (1 * oShepherdParent.WalkingSpeed)
}
}

with oShepherdLegRight {
if BendPercent > 0 {
BendPercent -= (1 * oShepherdParent.WalkingSpeed)
}
}

if CrookState = "none" {
if oShepherdCrook.ModX > 0 {
oShepherdCrook.ModX -= 1
} else if oShepherdCrook.ModX < 0 {
oShepherdCrook.ModX += 1
}

if oShepherdCrook.ModY > 0 {
oShepherdCrook.ModY -= 1
} else if oShepherdCrook.ModY < 0 {
oShepherdCrook.ModY += 1
}

if oShepherdCrook.RotateMod > 5 {
oShepherdCrook.RotateMod -= 5
} else if oShepherdCrook.RotateMod < -3 {
oShepherdCrook.RotateMod += 5
} else {
oShepherdCrook.RotateMod = 0
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

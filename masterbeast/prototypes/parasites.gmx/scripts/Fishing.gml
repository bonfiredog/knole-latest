
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



DesiredSpeed = 0
SpeedChangeRate = 0.05
DirectionChangeRate = 5

if MasterEyesShut = false {
if oShepherdHead.EyesShut = true {
oShepherdHead.EyesShut = false
}
}

with oShepherdCrook {
if oShepherdParent.FishingShake = false {
if RotateMod != DesiredUpright {
if RotateMod < DesiredUpright {
RotateMod += 7
} 
if RotateMod > DesiredUpright {
RotateMod -= 7
}
}
}

if RotateMod > DesiredUpright - 50 and RotateMod < DesiredUpright + 50 {
if ModX < 20 {
ModX += 1
} else if ModX > 20 {
ModX -= 1
}
}

if RotateMod > DesiredUpright - 50 and RotateMod < DesiredUpright + 50 {
if ModY < -3 {
ModY += 1
} else if ModY > -3 {
ModY -= 1
}
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

if oShepherdCrook.RotateMod < -70 {
if LineMod < 100 {
LineMod += 1
}
}

if Facing = "right" {
DesiredHeading = FishRightAngle
} else if Facing = "left" {
DesiredHeading = FishLeftAngle
}


if FishingShake = false {
if FishingShakeTimer > 0 {
FishingShakeTimer -= 1
} else if FishingShakeTimer <= 0 {
FishingShake = true
NumberOfShakes = irandom_range(1,3)
CrookUp = irandom_range(20,30)
OrigCrook = oShepherdCrook.RotateMod
}
} else if FishingShake = true {
if NumberOfShakes > 0 {
if FishDown = false {
if oShepherdCrook.RotateMod < (OrigCrook + CrookUp) {
oShepherdCrook.RotateMod += 7
} else if oShepherdCrook.RotateMod >= (OrigCrook + CrookUp) {
FishDown = true
}
} else if FishDown = true {
if oShepherdCrook.RotateMod > OrigCrook {
oShepherdCrook.RotateMod -= 7
} else {
NumberOfShakes -= 1
FishDown = false
}
}
} else {
FishingShake = false 
FishDown = false
NumberOfShakes = 0
CrookUp = 0
OrigCrook = 0
FishingShakeTimer = random_range(100,500)
}
}

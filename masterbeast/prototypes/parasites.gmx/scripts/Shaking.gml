if CrookShakeTime > 0 {
CrookShakeTime -= 1



if StartShake = false {


if oShepherdCrook.ModX != 0 {
if oShepherdCrook.ModX < -3 {
oShepherdCrook.ModX += 1
} else if oShepherdCrook.ModX > 3 {
oShepherdCrook.ModX -= 1
} else {
oShepherdCrook.ModX = 90
}
}

if oShepherdCrook.ModY != 0 {
if oShepherdCrook.ModY < 1 {
oShepherdCrook.ModY += 1
} else if oShepherdCrook.ModY > 1 {
oShepherdCrook.ModY -= 1
} else {
oShepherdCrook.ModY = 0
}
}

if oShepherdCrook.RotateMod != 0 {
if oShepherdCrook.RotateMod < -10 {
oShepherdCrook.RotateMod += 10
} else if oShepherdCrook.RotateMod > 10 {
oShepherdCrook.RotateMod -= 10
} else {
oShepherdCrook.RotateMod = 0
}
}

if oShepherdCrook.ModX = 0 and oShepherdCrook.ModY = 0 and oShepherdCrook.RotateMod = 0 {
StartShake = true
}


} else {

with oShepherdCrook {
if JiggleDir = "left" {
if RotateMod <= JiggleTarLeft {
RotateMod += oShepherdParent.ShakeSpeed
} else {
JiggleDir = "right"
JiggleTarRight = random_range(-2,-5)
}
} else if JiggleDir = "right" {
if RotateMod >= JiggleTarRight {
RotateMod -= oShepherdParent.ShakeSpeed
} else {
JiggleDir = "left"
JiggleTarLeft = random_range(2,5)
}
}
}
}

} else {
CrookShakeTime = 0
ShakeSpeed = 0
CrookState = "none"
JiggleDir = "left"
}

if StartStamp = false {
if oShepherdCrook.ModX != 5 {
if oShepherdCrook.ModX < 5 {
oShepherdCrook.ModX += 1
}
if oShepherdCrook.ModX > 5 {
oShepherdCrook.ModX += 1
}
}

if oShepherdCrook.ModY != 0 {
if oShepherdCrook.ModY < 0 {
oShepherdCrook.ModY += 1
}
if oShepherdCrook.ModY > 3 {
oShepherdCrook.ModY += 1
}
}

if oShepherdCrook.RotateMod != -35 {
if oShepherdCrook.RotateMod < -35 {
oShepherdCrook.RotateMod += 3
}
if oShepherdCrook.RotateMod > -35 {
oShepherdCrook.RotateMod -= 3
}
}

if oShepherdCrook.ModX = 5 and oShepherdCrook.ModY = 0 and oShepherdCrook.RotateMod < -35 {
StartStamp = true
}
} else if StartStamp = true {

if NumberOfStamps > 0 {
if StampDirection =  "up" {
if oShepherdCrook.ModY > -5 {
oShepherdCrook.ModY -= StampSpeed
} else if oShepherdCrook.ModY <= -5 {
StampDirection = "down"
}
} else if StampDirection = "down" {
if oShepherdCrook.ModY < 0 {
oShepherdCrook.ModY += StampSpeed
} else if oShepherdCrook.ModY >= 0 {
StampDirection = "up"
StampWoundCreateX = oShepherdCrook.x + (lengthdir_x(oShepherdCrook.sprite_width / 2,270)) * FacingScale
StampWoundCreateY = oShepherdCrook.y + (lengthdir_y(oShepherdCrook.sprite_width / 2,270)) * FacingScale
instance_create(StampWoundCreateX,StampWoundCreateY,sShepherdFootprint)
NumberOfStamps -=1
}
}
} else {
oShepherdCrook.ModY = 0
CrookState = "none"
NumberOfStamps = 0
StampSpeed = 0
StampDirection = "up"
StartStamp = false
}
}

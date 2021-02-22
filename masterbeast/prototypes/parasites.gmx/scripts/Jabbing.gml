
if StartJab = false {

if oShepherdCrook.ModX != 3 {
if oShepherdCrook.ModX < 3 {
oShepherdCrook.ModX += 1
}
if oShepherdCrook.ModX > 3 {
oShepherdCrook.ModX -= 1
}
}
if oShepherdCrook.ModY != 1 {
if oShepherdCrook.ModY < 1 {
oShepherdCrook.ModY += 1
}
if oShepherdCrook.ModY > 1 {
oShepherdCrook.ModY -= 1
}
}

if oShepherdCrook.RotateMod != -125 {
if oShepherdCrook.RotateMod < -125 {
oShepherdCrook.RotateMod += 10
}
if oShepherdCrook.RotateMod > -125 {
oShepherdCrook.RotateMod -= 10
}
}

if oShepherdCrook.ModX = 3 and oShepherdCrook.ModY = 1 and oShepherdCrook.RotateMod = -125 {
StartJab = true
}

} else if StartJab = true {

if NumberOfJabs > 0 {
if JabDirection =  "out" {
if oShepherdCrook.JabX < 4 {
oShepherdCrook.JabX += JabSpeed
} else if oShepherdCrook.JabX >= 4 {
JabDirection = "in"
}
} else if JabDirection = "in" {
if oShepherdCrook.JabX > 0 {
oShepherdCrook.JabX -= JabSpeed
} else if oShepherdCrook.JabX <= 0 {
JabDirection = "out"
NumberOfJabs -=1
}
}
} else {
oShepherdCrook.JabX = 0
CrookState = "none"
NumberOfJabs = 0
JabSpeed = 0
JabDirection = "up"
StartJab = false
}
}

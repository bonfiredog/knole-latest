///VocalProgression()

switch VocMode {
// --------- KEEP PROGRESSION LEVEL
case "same":
if mBehavioursReactive.OpenMouthActive = false {
if CurrentStep < CurrentChangePoint {
switch CurrentChangeDir {
case "raise":
CurrentVocPitch += ChangeRate
oMouthCentre.BaseXScale += (ChangeRate * 5)
break;
case "lower":
CurrentVocPitch -= ChangeRate
oMouthCentre.BaseXScale -= (ChangeRate * 5)
break;
}
} else {
if VocType = "shortlow" or VocType = "shorthigh" {
CurrentChangePoint += ((irandom_range(StepsOfSound / 3, StepsOfSound /2)))
} else {
CurrentChangePoint += ((irandom_range(StepsOfSound / 6, StepsOfSound /7)))
}
CurrentChangeDir = choose("same","raise","lower")
}
CurrentVocVolume = BothVolMod(TopVolume)
}
break;
// --------- FALL OVER TIME
case "fall":
CurrentVocPitch -= ChangeRate
oMouthCentre.BaseXScale -= (ChangeRate * 7)
CurrentVocVolume = BothVolMod(TopVolume)
break;
// --------- RISE OVER TlME
case "rise":
CurrentVocPitch += ChangeRate
oMouthCentre.BaseXScale += (ChangeRate * 7)
CurrentVocVolume = BothVolMod(TopVolume)
break;
// --------- RISE THEN FALL
case "risefall":
if ChangeNumber = 1 {
if CurrentStep < CurrentChangePoint  {
CurrentVocPitch += ChangeRate
oMouthCentre.BaseXScale += ChangeRate
} else {
CurrentChangePoint += ((irandom_range(StepsOfSound / 3.2,StepsOfSound / 2.8)))
ChangeNumber = 2
} 
} else if ChangeNumber = 2 {
if CurrentStep < CurrentChangePoint  {
} else {
CurrentChangePoint += ((irandom_range(StepsOfSound / 3.2,StepsOfSound / 2.8)))
ChangeNumber = 3
}
} else if ChangeNumber = 3 {
CurrentVocPitch -= ChangeRate
oMouthCentre.BaseXScale -= ChangeRate
}
CurrentVocVolume = BothVolMod(TopVolume)
break;
// --------- FALL THEN RISE
case "fallrise":
if ChangeNumber = 1 {
if CurrentStep < CurrentChangePoint  {
CurrentVocPitch -= ChangeRate
oMouthCentre.BaseXScale -= ChangeRate
} else {
CurrentChangePoint += ((irandom_range(StepsOfSound / 3.2,StepsOfSound / 2.8)))
ChangeNumber = 2
} 
} else if ChangeNumber = 2 {
if CurrentStep < CurrentChangePoint  {
} else {
CurrentChangePoint += ((irandom_range(StepsOfSound / 3.2,StepsOfSound / 2.8)))
ChangeNumber = 3
}
} else if ChangeNumber = 3 {
CurrentVocPitch += ChangeRate
oMouthCentre.BaseXScale += ChangeRate
}
CurrentVocVolume = BothVolMod(TopVolume)
break;
}






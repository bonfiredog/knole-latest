///Modulating


switch Mode {
case "neutral":
if Steps < RisePoint {
oMouth.PercentageOpen += RiseRate
TargetOpen = oMouth.PercentageOpen
TargetBend = oMouthLeft.BendPercentage
} else if Steps > RisePoint {
if ModTimer > 0 {
ModTimer -= 1
} else if ModTimer <= 0 {
TargetOpen += (irandom_range(-10,10))
TargetBend += (irandom_range(-20,20))
ModTimer = irandom_range(30,40)
}
}
break;
//-----------
case "alarm":
if Steps < RisePoint {
oMouth.PercentageOpen += RiseRate
oMouthLeft.BendPercentage += RiseRate
TargetOpen = oMouth.PercentageOpen
TargetBend = oMouthLeft.BendPercentage
} else if Steps > RisePoint {
oMouth.PercentageOpen -= RiseRate
oMouthLeft.BendPercentage -= RiseRate
TargetOpen = oMouth.PercentageOpen
TargetBend = oMouthLeft.BendPercentage
}
break;
//----------
case "question":
oMouthLeft.BendPercentage += RiseRate
TargetBend = oMouthLeft.BendPercentage
break;
//-----------
case "no":
if Steps < VolBreakPoint {
if ex_audio_get_volume(Sound) < VolMain {
oMouth.PercentageOpen += NoRate
TargetOpen = oMouth.PercentageOpen
}
} else {
if ex_audio_get_volume(Sound) > 0 {
oMouth.PercentageOpen -= NoRate
TargetOpen = oMouth.PercentageOpen
}
}

if Steps < PitchBreakPoint {
if ex_audio_get_pitch(Sound) < PitchMain {
oMouthLeft.BendPercentage += NoRate
TargetBend = oMouthLeft.BendPercentage
}
} else {
if ex_audio_get_pitch(Sound) > PitchLower {
TargetBend = NoBend
}
}
break;

//-----------
case "yes":
if Steps < VolBreakPoint {
if ex_audio_get_volume(Sound) < VolMain {
oMouth.PercentageOpen += YesRate
TargetOpen = oMouth.PercentageOpen
}
} else {
if ex_audio_get_volume(Sound) > 0 {
oMouth.PercentageOpen -= YesRate
TargetOpen = oMouth.PercentageOpen
}
}

if Steps < PitchBreakPoint {
if ex_audio_get_pitch(Sound) < PitchMain {
oMouthLeft.BendPercentage += YesRate
TargetBend = oMouthLeft.BendPercentage
} else if ex_audio_get_pitch(Sound) > PitchMain {
oMouthLeft.BendPercentage -= YesRate
TargetBend = oMouthLeft.BendPercentage
}
} else {
if ex_audio_get_pitch(Sound) < PitchHigher {
TargetBend = YesBend
}
}
break;

//-----------
case "moan":
if StartedMod = false {
if ex_audio_get_volume(Sound) < VolMain {
oMouth.PercentageOpen += MoanRate
TargetOpen = oMouth.PercentageOpen
}
if ex_audio_get_pitch(Sound) < PitchMain {
oMouthLeft.BendPercentage += MoanRate
TargetBend = oMouthLeft.BendPercentage
}
if ex_audio_get_volume(Sound) >= VolMain 
and ex_audio_get_pitch(Sound) >= PitchMain
{
StartedMod = true
}
} else {
if MoanTimer > 0 {
MoanTimer -= 1
} else if MoanTimer <= 0 {
MoanTimer = irandom_range((StepsOfSound / 100) * 5,(StepsOfSound / 100) * 10)
MoanTarget = random_range(PitchLower,PitchHigher)
MoanRate2 = irandom_range(0.2,1)
}

if ex_audio_get_pitch(Sound) > MoanTarget {
oMouthLeft.BendPercentage -= MoanRate2
TargetBend = oMouthLeft.BendPercentage
} else if ex_audio_get_pitch(Sound) < MoanTarget {
oMouthLeft.BendPercentage += MoanRate2
TargetBend = oMouthLeft.BendPercentage
}
}

break;

//--------
case "scream": 
if ex_audio_get_volume(Sound) < VolumeHigher {
oMouth.PercentageOpen += ScreamRate
TargetOpen = oMouth.PercentageOpen
}
if ex_audio_get_pitch(Sound) < PitchHigher {
oMouthLeft.BendPercentage += ScreamRate
TargetBend = oMouthLeft.BendPercentage
}
break;

}
//--------------------------------------

if oMouth.PercentageOpen < TargetOpen {
oMouth.PercentageOpen += CloseRate
} else if oMouth.PercentageOpen > TargetOpen {
oMouth.PercentageOpen -= CloseRate
}

if oMouthLeft.BendPercentage < TargetBend {
oMouthLeft.BendPercentage += BendEndRate
} else if oMouthLeft.BendPercentage > TargetBend {
oMouthLeft.BendPercentage -= BendEndRate
}

//---------------------------------------


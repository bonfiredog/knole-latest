///StartVocal(Mode,Reps,ClosingMouth,Intensity,ClosingBend)

if Vocalising = false {
//Pause breathing behaviour
Vocalising = true
PlayedClack = false
Mode = argument0
Reps = argument1
ClosingMouth = argument2
Intensity = argument3
Intensity = clamp(Intensity,0.1,5)
ClosingBend = argument4
StartedThisVocal = false
ComeToInitialVol = false
CurrentVolume = 0
CurrentPitch = 0
Steps = 0
TargetPitch = 0
TargetOpen = 0 
TargetBend = 0 

switch Mode {
//-----------------------------------------------------------------------------
case "alarm":
Sound = choose("alarmvoice1")
StepsOfSound = round(ex_audio_get_track_duration(Sound) * 60)
Clack = choose("clack1")
VolumeLower = 0.3 
VolumeHigher = 1
PitchLower = 1 - (Intensity / 10)
PitchHigher = 1.1 + (Intensity / 10)
VolumeRate = 0.06

//---------
RisePoint = irandom_range(round((StepsOfSound / 2) / 2), round((StepsOfSound / 3) * 2))
RiseRate = random_range(2,5)
break;
//-----------------------------------------------------------------------------
case "question":
Sound = choose("questionvoice1")
StepsOfSound = round(ex_audio_get_track_duration(Sound) * 60)
Clack = choose("clack1")
VolumeLower = 0.3 
VolumeHigher = 1
PitchLower = 0.9 - (Intensity / 10)
PitchHigher = random_range(1.1,1.3) + (Intensity / 10)
VolumeRate = 0.06

//---------

RiseRate = random_range(2,5)
break;
//-----------------------------------------------------------------------------
case "no":
Sound = choose("novoice1")
StepsOfSound = round(ex_audio_get_track_duration(Sound) * 60)
Clack = choose("clack1")
VolumeLower = 0
VolumeHigher = 1
PitchLower = 1 - (Intensity / 10)
PitchHigher = 1.1 + (Intensity / 10)
VolumeRate = 0.06

//---------

VolMain = random_range(0.3,0.9)
PitchMain = PitchLower + ((PitchHigher - PitchLower) / 2)
VolBreakPoint = (StepsOfSound / 100) * 90
PitchBreakPoint = irandom_range((StepsOfSound / 100) * 30, (StepsOfSound / 100) * 50)
NoRate = irandom_range(7,15)
NoBend = irandom_range(-30,-40)

break;
//-----------------------------------------------------------------------------
case "yes":
Sound = choose("yesvoice1")
StepsOfSound = round(ex_audio_get_track_duration(Sound) * 60)
Clack = choose("clack1")
VolumeLower = 0
VolumeHigher = 1
PitchLower = 1 - (Intensity / 10)
PitchHigher = 1.1 + (Intensity / 10)
VolumeRate = 0.06

//---------

VolMain = random_range(0.3,0.9)
PitchMain = PitchLower + ((PitchHigher - PitchLower) / 2)
VolBreakPoint = (StepsOfSound / 100) * 90
PitchBreakPoint = irandom_range((StepsOfSound / 100) * 30, (StepsOfSound / 100) * 50)
YesRate = irandom_range(7,15)
YesBend = irandom_range(30,40)
break;

//-----------------------------------------------------------------------------
case "moan":
Sound = choose("moanvoice1")
StepsOfSound = round(ex_audio_get_track_duration(Sound) * 60)
Clack = choose("clack1")
VolumeLower = 0
VolumeHigher = 1
PitchLower = 1 - (Intensity / 10)
PitchHigher = 1.1 + (Intensity / 10)
VolumeRate = 0.001

//---------

VolMain = random_range(0.3,0.9)
PitchMain = PitchLower + ((PitchHigher - PitchLower) / 2)
StartedMod = false
MoanRate = irandom_range(7,15)
MoanTarget = random_range(PitchLower,PitchHigher)
MoanTimer = 20
MoanRate2 = irandom_range(0.2,1)

break;

//-----------------------------------------------------------------------------
case "scream":
Sound = choose("screamvoice1")
StepsOfSound = round(ex_audio_get_track_duration(Sound) * 60)
Clack = choose("clack1")
VolumeLower = 0
VolumeHigher = 1
PitchLower = 1 - (Intensity / 10)
PitchHigher = random_range(1.12,1.21) + (Intensity / 10)
VolumeRate = 0.06

//---------

ScreamRate = irandom_range(10,15)


break;

}

InitialVolume = VolumeLower + (((VolumeHigher - VolumeLower) / 100) * oMouth.PercentageOpen)
InitialPitch = PitchLower + (((PitchHigher - PitchLower) / 200) * (oMouthLeft.BendPercentage + 100))
TargetPitch = InitialPitch
TargetOpen = InitialVolume
}

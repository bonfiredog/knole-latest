///StartVocalisation(type,intensity0-1,mode,steps)

if mCreatureController.Alive > 0 {
with mBehavioursDeliberative {
if Vocalising = false {
WriteToLog("Made a vocal sound.")
HoldBreathFor(5)
VocType = argument0
if VocType = "longlow" or VocType = "longhigh" {
VocSteps = argument3
VocSteps = clamp(VocSteps,0,200)
}
VocIntensity = argument1
- ((0.4 / 100) * mCreatureController.Tiredness)
+ ((0.4 / 100) * mEmotionSubController.AngerActivation)
+ ((0.4 / 100) * mCreatureController.Stress)
+ ((0.4 / 100) * mCreatureController.Pain)
- ((0.8 / 100) * (100 - mCreatureController.Alive))
- ((0.4 / 100) * mCreatureController.Lust)
- ((0.4 / 100) * mEmotionSubController.SadActivation)
- ((0.4 / 100) * mEmotionSubController.ShameActivation)
+ ((0.4 / 100) * mEmotionSubController.HappyActivation)
+ ((0.4 / 100) * mEmotionSubController.FearActivation)
+ ((0.4 / 100) * mEmotionSubController.SurpriseActivation)
VocIntensity = clamp(VocIntensity,0.2,1)
StartedThisVocal = false
ComeToInitialVol = false
VocSound = "none"
TopVolume = 0.3 + ((0.3 / 100) * VocIntensity * 100)
VocMode = argument2

if VocMode = "same" {
StartingPitch = (mInterfaceController.BaseSoundPitch + ((0.08 / 100) * (VocIntensity * 100))) + (random_range(-0.05,0.05)) 
PitchLowest = StartingPitch - 0.2 - ((0.2 / 100) * (VocIntensity * 100))
PitchHighest = StartingPitch + 0.2 + ((0.2 / 100) * (VocIntensity * 100))
CurrentVocVolume = TopVolume
CurrentVocPitch = StartingPitch
} else if VocMode = "rise" {
StartingPitch = (mInterfaceController.BaseSoundPitch - ((0.08 / 100) * (VocIntensity * 100))) + (random_range(-0.05,0.05)) 
PitchLowest = StartingPitch - 0.1 - ((0.1 / 100) * (VocIntensity * 100))
PitchHighest = StartingPitch + 0.3 + ((0.3 / 100) * (VocIntensity * 100))
CurrentVocVolume = TopVolume
CurrentVocPitch = StartingPitch
} else if VocMode = "fall" {
StartingPitch = (mInterfaceController.BaseSoundPitch + ((0.08 / 100) * (VocIntensity * 100))) + (random_range(-0.05,0.05)) 
PitchLowest = StartingPitch - 0.3 - ((0.3 / 100) * (VocIntensity * 100))
PitchHighest = StartingPitch + 0.1 + ((0.1 / 100) * (VocIntensity * 100))
CurrentVocVolume = TopVolume
CurrentVocPitch = StartingPitch
} else if VocMode = "fallrise" {
StartingPitch = (mInterfaceController.BaseSoundPitch + ((0.08 / 100) * (VocIntensity * 100))) + (random_range(-0.05,0.05)) 
PitchLowest = StartingPitch - 0.3 - ((0.3 / 100) * (VocIntensity * 100))
PitchHighest = StartingPitch + 0.3 + ((0.3 / 100) * (VocIntensity * 100))
CurrentVocVolume = TopVolume
CurrentVocPitch = StartingPitch
} else if VocMode = "risefall" {
StartingPitch = (mInterfaceController.BaseSoundPitch - ((0.08 / 100) * (VocIntensity * 100))) + (random_range(-0.05,0.05)) 
PitchLowest = StartingPitch - 0.3 - ((0.3 / 100) * (VocIntensity * 100))
PitchHighest = StartingPitch + 0.3 + ((0.2 / 100) * (VocIntensity * 100))
CurrentVocVolume = TopVolume
CurrentVocPitch = StartingPitch
}


BaseMouthOpen = oMouthCentre.PercentageDiff
StartOpenMouthBehaviour(0.02,0.01 + ((0.05 / 100) * (VocIntensity * 100)))
Vocalising = true
}
}
}

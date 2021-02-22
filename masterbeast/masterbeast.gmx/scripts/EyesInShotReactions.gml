///EyesInShotReactions()

if PlayerViewOverObject(oEyeballLeft) or PlayerViewOverObject(oEyeballRight) and mInterfaceController.CurrentView = MicroView
and mDriveCollectionMaster.Dozing = false and IsAsleep() = false and IsAlive() {

if mDriveCollectionMaster.EyeShotTimer > (300 + (100 * mCreatureController.Triad)) and mDriveCollectionMaster.EyeShotTimer > 900 {
mDriveCollectionMaster.BaseBreathRate += 0.001
if Chance(0.01 + ((0.02 / 1000) * mDriveCollectionMaster.EyeShotTimer)){NumberOfBlinks(irandom_range(3,5) + ((NumberEmoMod(FearActivation,3))))}

if IsInRitual() = false {
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)){EmotionRequest()}
if mCreatureController.Triad > 0 {
ChangeEmotionStep("fear","up",0.005)
ChangeEmotionStep("happy","down",0.005)
ChangeEmotionStep("anger","down",0.005)
mCreatureController.BaseStress += 0.005
ChangeEmotionStep("shame","up",0.005)
} else {
ChangeEmotionStep("fear","up",0.1)
ChangeEmotionStep("happy","down",0.1)
ChangeEmotionStep("anger","down",0.1)
mCreatureController.BaseStress += 0.1
ISDown(BaseTrust,0.004)
ISDown(BaseSubIntent,0.00004)
}
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)){StartWinkBehaviour(choose("left","right"))}
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)){EyeSquint(2,true,15)}
StartShiverBehaviour(irandom_range(0.2,0.5),irandom_range(3,10),irandom_range(5,10))
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)){ShiftAway(argument0.x,argument0.y,irandom_range(60,150),random(360))}
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)) {
StartEyebrowTwitchRightBehaviour()
StartEyebrowTwitchLeftBehaviour()
}
} else {
if (ChanceToRitualReact() / 1000 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)) {choose(StartEyebrowTwitchRightBehaviour(),StartEyebrowTwitchLeftBehaviour())}
if (ChanceToRitualReact() / 1000 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)) {EyeSquint(2,true,15)}
if (ChanceToRitualReact() / 1000 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)) {StartWinkBehaviour(choose("left","right"))}
}
}
}

///SigilnShotReactions()

if PlayerViewOverObject(sSigilMoleParent) and mInterfaceController.CurrentView = MicroView
and mDriveCollectionMaster.Dozing = false and IsAsleep() = false and IsAlive() {

oSigilRed.image_alpha += (0.002 + ((0.002 / 1000 * mDriveCollectionMaster.SigilShotTimer)))

if mDriveCollectionMaster.SigilShotTimer > (300 + (100 * mCreatureController.Triad)) and mDriveCollectionMaster.SigilShotTimer > 900 {
mDriveCollectionMaster.BaseBreathRate += 0.001
if Chance(0.01 + ((0.02 / 1000) * mDriveCollectionMaster.SigilShotTimer)){NumberOfBlinks(irandom_range(3,5) + ((NumberEmoMod(FearActivation,3))))}

if IsInRitual() = false {
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)){EmotionRequest()}
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
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)){StartEyebrowTwitchRightBehaviour()}
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)){EyeSquint(2,true,15)}
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)){StartEyebrowTwitchLeftBehaviour()}
StartShiverBehaviour(irandom_range(0.2,0.5),irandom_range(3,10),irandom_range(5,10))
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)){ShiftAway(argument0.x,argument0.y,irandom_range(60,150),random(360))}
} else {
if (ChanceToRitualReact() / 1000 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)) {choose(StartEyebrowTwitchRightBehaviour(),StartEyebrowTwitchLeftBehaviour())}
if (ChanceToRitualReact() / 1000 + ((0.002 / 1000) * mDriveCollectionMaster.SigilShotTimer)) {EyeSquint(2,true,15)}
}

}
}

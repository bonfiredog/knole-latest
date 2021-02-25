///SigilProgressReactions() 

//if DrivesAreOn() {

if mDriveCollectionMaster.SigilStartTimer <= 0 {
if IsInRitual() = false {
ChanceToWake(20)
LittleJump()
StopYawnBehaviour()
StopXYMove()
StopMoveInOut()
if Chance(35){HoldBreathFor(irandom_range(25,60))}
ChangeEmotion("surprise","up",2,30)
if mCreatureController.Lust > 30 { ShakeCaul(1,irandom_range(30,50)) StartCaulVibrateBehaviour(irandom_range(20,50))}
mDriveCollectionMaster.SigilStartTimer = irandom_range(1500,2500) + NumberISMod(mCreatureController.Stress,300) + NumberISMod(mCreatureController.Tiredness,400) + LowAliveMod(500) - NumberISMod(mCreatureController.Trust,500)
} else {
MoveToXY(oSigilArea.x,oSigilArea.y,15,mInterfaceController.CurrentView,10)
}

mDriveCollectionMaster.SigilProgressIntensity += 1

ChanceToWake(0.05)

StartWinkBehaviour("left")
StartEyebrowTwitchLeftBehaviour()
StartEyebrowTwitchRightBehaviour()
ShakeCaul(1,20)
StartCaulVibrateBehaviour(20)
RandomTwitch()

if IsInRitual() {
RandomShake()
mCreatureController.BaseResistance -= 0.02
mCreatureController.BaseTiredness += 0.002
mCreatureController.BasePain += 0.02
mCreatureController.BaseAlive -= 0.0002
mCreatureController.CloseToAnne += 0.02
mCreatureController.BaseTrust += 0.02
mCreatureController.AnneIntent += 0.0002
ChangeEmotionStep("happy","up",0.02)
mCreatureController.BaseLust += 0.2
} else {
NodUpDown(1)
mCreatureController.BaseResistance -= 0.02
mCreatureController.BaseTiredness += 0.002
mCreatureController.BasePain += 0.02
mCreatureController.BaseAlive -= 0.0002
mCreatureController.BaseStress += 0.02
mCreatureController.BaseTrust -= 0.02
mCreatureController.BaseSubIntent -= 0.02
mCreatureController.CloseToAnne -= 0.02
ChangeEmotionStep("happy","down",0.02)
if mCreatureController.Resistance > 40 {
ChangeEmotionStep("anger","up",0.02)
} else {
ChangeEmotionStep("fear","up",0.02)
}
mCreatureController.BaseLust += 0.02
if mCreatureController.Triad > 0 {
ChangeEmotionStep("shame","up",0.02)
}
}
}
//}

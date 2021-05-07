///SigilMoleCutReaction()
if mDriveCollectionMaster.RealReactionsOn = true {
ChanceToWake(100)
if mDriveCollectionMaster.SigilCutTimer > 0 {
LittleJump()
ChangeEmotion("surprise","up",1,90)
TwitchIfNearBP(mouse_x,mouse_y,150)
SigilCutTimer = irandom_range(500,600)
if mCreatureController.Triad > 0.3 {
VocaliseChance(80 * ReactChance())
}
}

if Chance(85 * ReactChance()){StartScreenShake(irandom_range(25,40),irandom_range(0.4,0.9),irandom_range(3,7))}
if Chance(80 * ReactChance()){EyeSquint(irandom_range(1,2),true,irandom_range(140,200))}

if mDriveCollectionMaster.InRitual = true {
TwitchRun(irandom_range(50,60))
mCreatureController.AnneIntent -= 0.9
} else {
TwitchRun(irandom_range(20,30))
mCreatureController.BaseSubIntent -= 0.9 * mPlotController.ISModifier
}
mDriveCollectionMaster.BaseBreathRate += 0.01

with mCreatureController {
CloseToAnne -= 50 * mPlotController.ISModifier
BaseTrust -= 40 * mPlotController.ISModifier
BaseResistance += 60 * mPlotController.ISModifier
BaseLust -= 100 * mPlotController.ISModifier
BaseAlive -= 2 * mPlotController.ISModifier
BaseStress += 40 * mPlotController.ISModifier
BasePain += 45 * mPlotController.ISModifier
}
ChangeEmotion("happy","down",1,45)
ChangeEmotion("fear","up",1,45)
if mCreatureController.Resistance > 40 {
ChangeEmotion("anger","up",1,45)
} else {
ChangeEmotion("shame","up",1,45)
}
MoveBackForwardUnCapped("retreat",irandom_range(10,20),irandom_range(60,70) + (-30 * mCreatureController.Triad))
if Chance(40) {WinkRun(irandom_range(2,6))}

mDriveCollectionMaster.alarm[1] = 60
}

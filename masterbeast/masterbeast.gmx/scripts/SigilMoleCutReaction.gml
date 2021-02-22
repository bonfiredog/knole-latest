///SigilMoleCutReaction()
if DrivesAreOn() {
ChanceToWake(100)
if mDriveCollectionMaster.SigilCutTimer > 0 {
LittleJump()
ChangeEmotion("surprise","up",1,90)
TwitchIfNearBP(mouse_x,mouse_y,150)
SigilCutTimer = irandom_range(500,600)
if mCreatureController.Triad > 0.3 {
VocaliseChance(80)
}
}

if Chance(85){StartScreenShake(irandom_range(25,40),irandom_range(0.4,0.9),irandom_range(3,7))}
if Chance(80){EyeSquint(irandom_range(1,2),true,irandom_range(140,200))}

if mDriveCollectionMaster.InRitual = true {
TwitchRun(irandom_range(50,60))
mCreatureController.AnneIntent -= 0.9
} else {
TwitchRun(irandom_range(20,30))
mCreatureController.SubIntent -= 0.9
}
mDriveCollectionMaster.BaseBreathRate += 2

with mCreatureController {
CloseToAnne -= 50
BaseTrust -= 40
BaseResistance += 60
BaseLust -= 100
BaseAlive -= 2
BaseStress += 40
BasePain += 45
}
ChangeEmotion("happy","down",1,45)
ChangeEmotion("fear","up",1,45)
if mCreatureController.Resistance > 40 {
ChangeEmotion("anger","up",1,45)
} else {
ChangeEmotion("shame","up",1,45)
}
MoveBackForwardUnCapped("retreat",irandom_range(10,20),irandom_range(60,70) + (-30 * mCreatureController.Triad))

}

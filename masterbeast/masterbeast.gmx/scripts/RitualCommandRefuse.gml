///RitualCommandRefuse()

if mDriveCollectionMaster.RitualRequestTimer <= 0 {
ChangeEmotion("surprise","up",0.6,40)
mDriveCollectionMaster.RitualRequestTimer = irandom_range(1000,4000)
}

if IsInRitual() = false {
if Chance(50) {
MoveBackForward("retreat",45,irandom_range(5,20))
}
}

RandomShake()
LittleJump()


if Chance(25){VocaliseChance(100)}
if Chance(30){EyeSquint(3,true,irandom_range(50,90))}
TwitchRun(irandom_range(5,10))


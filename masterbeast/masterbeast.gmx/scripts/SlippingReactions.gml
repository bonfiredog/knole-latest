///SlippingReactions

if DrivesAreOn() {

if mBehavioursReactive.Sleeping = false {
if mDriveCollectionMaster.SlipTimer <= 0 {
ChangeEmotion("surprise","up",0.6,40)
mDriveCollectionMaster.SlipTimer = 600
}
HoldBreathFor(irandom_range(15,30))
ChanceToWake(30)


mDriveCollectionMaster.BaseBreathRate += 0.3

if IsInRitual() = true {
ChangeEmotion("happy","up",0.1,10)
ChangeEmotion("fear","up",0.5,40)
ChangeEmotion("shame","up",0.3,10 + ((15 / 100) * mCreatureController.Triad))
mCreatureController.BaseStress += 20
} else {
VocaliseChance(45)
mCreatureController.BaseStress += 10
ChangeEmotion("fear","up",0.5,40)
ChangeEmotion("shame","up",0.3,15 + ((15 / 100) * mCreatureController.Triad))
if mCreatureController.Triad < 0 or mCreatureController.Resistance > 50 {
ChangeEmotion("anger","up",0.3,25)
}
}
if Chance(20) {
LittleJump()
}
}
}

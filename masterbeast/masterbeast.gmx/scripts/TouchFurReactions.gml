///TouchFurReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
if AmountForward(80) and IsAlive() {
TwitchIfNearBP(mFinger.x,mFinger.y,250)
ChanceToWake(4)
mDriveCollectionMaster.BaseBreathRate += 0.0005

if Chance(30 + NumberISMod(mCreatureController.Lust,30)) {
ShakeCaul(irandom_range(10,20),irandom_range(30,60))
StartCaulVibrateBehaviour(irandom_range(60,90))
}

//Ritual 
if IsInRitual() {
if mDriveCollectionMaster.TouchFurTimer <= 0 or mDriveCollectionMaster.NoInteractionTimer > 2000 {
if ChanceToRitualReact() {
LittleJump()
}
if ChanceToRitualReact() {
NodUpDown(irandom_range(1,3))
}
if ChanceToRitualReact() {
TwitchRun(irandom_range(5,10))
}
ChangeEmotion("surprise","up",0.8,irandom_range(10,30))
MoveBackForward("comeforward",20,20)

ChangeEmotion("happy","up",0.3,4)
ChangeEmotion("fear","down",0.3,4)
ChangeEmotion("anger","down",0.3,4)
mCreatureController.BaseLust += 1  * mPlotController.ISModifier

mDriveCollectionMaster.TouchFurTimer = irandom_range(3000,6000)
}

//Not Ritual
} else {
if mDriveCollectionMaster.TouchFurTimer <= 0 or mDriveCollectionMaster.NoInteractionTimer > 2000 {
EmotionRequest()
if Chance(50 * ReactChance()) {
LittleJump()
}
if Chance(50 * ReactChance()) {
TwitchRun(irandom_range(5,10))
}
ChangeEmotion("surprise","up",0.8,irandom_range(10,30))


if mCreatureController.Triad > 0 and Trust > 40 {
if Chance(25 * ReactChance()) {
MoveBackForward("comeforward",20,irandom_range(5,20))
}
RandomVoc(0.3)
} else {
if Chance(25 * ReactChance()) {
MoveBackForward("retreat",10,irandom_range(5,20))
}
if Chance(25 * ReactChance()) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(30,100),random(360))
}
if Chance(10 * ReactChance()) {
RandomVoc(0.2)
}
if Chance(40 * ReactChance()) {
HoldBreathFor(irandom_range(40,70))
}
ChangeEmotion("fear","up",0.3,3)
mCreatureController.BaseStress += 3 * mDriveCollectionMaster.ISModifier
if mCreatureController.Resistance > 30 {
ChangeEmotion("anger","up",0.3,3)
}
if Chance(20 * ReactChance()) {
RandomShake()
}

}

mDriveCollectionMaster.TouchFurTimer = irandom_range(3000,6000)

mDriveCollectionMaster.alarm[1] = 60
}

}
}
}


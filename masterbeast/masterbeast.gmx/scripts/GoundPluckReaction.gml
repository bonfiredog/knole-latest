///GoundPluckReaction()

if Chance(60) {StartTwitchNoseSideBehaviour(irandom_range(10,25))}
if Chance(60) {StartEyebrowTwitchRightBehaviour() StartEyebrowTwitchLeftBehaviour() }
if Chance(60) {StartCheekTwitchLeftBehaviour() StartCheekTwitchRightBehaviour() }
ChanceToWake(1)
StopYawnBehaviour()
if Chance(10) {TwitchRun(irandom_range(3,10))}
if Chance(10) {RandomShake()}


if IsAsleep() = false {
if object_get_name(self.id) = "oEyelidDuctLeft" {
mDriveCollectionMaster.NumberOfLeftBlinks = irandom_range(2,5)
} else if object_get_name(self.id) = "oEyelidDuctRight" {
mDriveCollectionMaster.NumberOfRightBlinks = irandom_range(2,5)
}

if Chance(25) { EyeSquint(irandom_range(0,3),true,irandom_range(20,25))}
if mDriveCollectionMaster.EyeTouchTimer <= 0 {
ChangeEmotion("surprise","up",2,20 + (10 * mCreatureController.BaseSubIntent) + ((30 / 100) * mCreatureController.Trust))
mDriveCollectionMaster.EyeTouchTimer = 1000
}
mCreatureController.Dirt += 1

if IsInRitual() {
ISUp(CloseToAnne,2)
ISUp(BaseTrust,2)
ISUp(AnneIntent,0.02)

ChangeEmotion("happy","up",0.5,8)
if mBehavioursDeliberative.PercentForward < 100 { MoveBackForward("comeforward",15,100 - mBehavioursDeliberative.PercentForward) }
} else {
if mDriveCollectionMaster.EyeTouchTimer <= 0 {
ChangeEmotion("surprise","up",2,20 + (10 * mCreatureController.BaseSubIntent) + ((30 / 100) * mCreatureController.Trust))
if Chance(40) { EmotionRequest()}
mDriveCollectionMaster.EyeTouchTimer = 1000
}
if Chance(20 + NumberEmoMod(mEmotionSubController.FearActivation,25)){MoveBackForward("retreat",15,irandom_range(10,20))}
ISUp(BaseResistance,4)
ISUp(BaseStress,2)
ISDown(CloseToAnne,4)
ISUp(BaseTrust,3)
ISDown(BaseSubIntent,0.005)
ChangeEmotion("happy","down",0.5,5)
if mCreatureController.Triad > 0 {
ChangeEmotion("anger","up",0.5,5)
} else {
ChangeEmotion("fear","up",0.5,5)
}
mDriveCollectionMaster.BaseBreathRate += 0.0003
if Chance(20 + NumberISMod(mCreatureController.Resistance,25)) {
choose(
RandomVoc(0.55),
ShiftAway(mouse_x,mouse_y,irandom_range(30,60),random(360))
)
}



}
}


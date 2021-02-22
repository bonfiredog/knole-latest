///NoiseInEarReactions

if HeardInEar = true {

ChangeEmotion("surprise","up",0.9,5)
RandomTwitch()

if mCreatureController.Triad > 0 {
ChangeEmotion("happy","up",0.3,20)
ChangeEmotion("sad","down",0.3,10)
ChangeEmotion("fear","down",0.3,10)
ChangeEmotion("anger","down",0.3,10)
with mCreatureController {
BaseLust += 10
BaseStress -= 5
BaseResistance -= 5
BaseTrust += 3
CloseToAnne += 5
SubIntent += 0.03
}

StartCaulVibrateBehaviour(60 + mCreatureController.Lust)
} else {
ChangeEmotion("happy","down",0.3,20)
ChangeEmotion("fear","up",0.3,10)
ChangeEmotion("anger","down",0.3,10)
ChangeEmotion("shame","up",0.3,10)

VocaliseChance(15)

with mCreatureController {
BaseLust += 10
BaseStress += 5
BaseResistance -= 5
BaseTrust -= 2
CloseToAnne += 5
SubIntent -= 0.03
}
}
HeardInEar = false





} else if HeardInEarLoud = true {
if mBehavioursDeliberative.CrunchingActive = true {
if Chance(50) {
PauseCrunching()
}
}
ChanceToWake(50)
if Chance(((90 / 100) * (100 - mCreatureController.Alive))) {
TwitchRun(irandom_range(10,20))
}

if IsAsleep() = false {
if IsInRitual() {
if ChanceToRitualReact(){ChangeEmotion("surprise","up",2,20 + ((20 / 100) * mDriveCollectionMaster.TimeSinceLastSpeech / 30))}
ISUp(CloseToAnne,irandom_range(1,2))
ISUp(BaseStress,2)
ISUp(BaseTiredness,1)
ChangeEmotion("happy","up",0.3,4)
if ChanceToRitualReact(){HoldBreathFor(irandom_range(20,50))}
if ChanceToRitualReact() {EyeSquint(irandom_range(3,6),true,irandom_range(60,120))}
if ChanceToRitualReact() {LittleJump()}
if ChanceToRitualReact() {StartSwallowBehaviour(2,40)}
} else {
ChangeEmotion("surprise","up",2,20 + ((20 / 100) * mDriveCollectionMaster.TimeSinceLastSpeech / 30))
ChangeEmotion("happy","down",0.4,10)
ISDown(BaseTrust,1)
ISDown(BaseSubIntent,0.01)
ISUp(BaseStress,2)
if Chance(60) {HoldBreathFor(irandom_range(40,80))}
mDriveCollectionMaster.BaseBreathRate += 0.02
if Chance(70) {
StopShiverBehaviour()
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
StopVocalPhrase()
EmotionRequest()
}
if Chance(mEmotionSubController.Fear) {
MoveBackForwardUnCapped("retreat",irandom_range(15,30),irandom_range(10,30))
}
if Chance(60){
LittleJump()
}
if Chance(40){
StartSwallowBehaviour(10,10)
}
if Chance(30){EyeSquint(irandom_range(3,5),true,irandom_range(20,70))}
if mCreatureController.Triad > 0 {
ISDown(BaseResistance,1.5)
ChangeEmotion("shame","up",0.6,10)
ChangeEmotion("sad","up",0.6,10)
if Chance(10){NodUpDown(irandom_range(2,3))}
} else {
ISUp(BaseResistance,1.5)
if Chance(10){RandomShake()}
}

if Chance(mEmotionSubController.Fear) {
TwitchRun(irandom_range(3,10))
}

ChangeEmotion("anger","down",0.6,6)
ChangeEmotion("fear","up",0.6,6)



}
}




HeardInEarLoud = false
}

///RipOutHornReactions()

if DrivesAreOn() {

mCreatureController.HornsPulled += 1

if IsAlive() and AmountForward(60) {
HornMod = mCreatureController.HornsPulled
HornMod = clamp(HornMod,0,10)

ChanceToWake(100)

//In Ritual
if IsInRitual() {
with mCreatureController {
BaseResistance -= 30
BaseStress += 30
BasePain += 30
BaseTiredness += 10
BaseAlive -= 5
CloseToAnne += 25
BaseLust -= (25 - HornModded(25))
}

ChangeEmotion("happy","up",3,20 + NumberISMod(Pain,30) - HornModded(40))
mDriveCollectionMaster.BaseBreathRate += 0.3
if Chance(30) {
TwitchRun(irandom_range(5,10))
}
if ChanceToRitualReact() {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(3,10))
}
if ChanceToRitualReact() {
RandomVoc(0.03)
}
if ChanceToRitualReact() {
EyeSquint(irandom_range(2,3),true,irandom_range(40,200))
}
StopYawnBehaviour()
if ChanceToRitualReact() {
ShiftAway(x,y,irandom_range(30,40),random(360))
}
ShiverChance(15)


//Not In Ritual

} else {
with mCreatureController {
BaseResistance -= 50
BaseStress += 40
BasePain += 30
BaseTiredness += 10
BaseAlive -= 5
CloseToAnne -= 25
BaseTrust -= 25
BaseSubIntent -= 0.3
BaseLust -= 25
}

if mCreatureController.Triad > 0 {
ChangeEmotion("surprise","up",1,50 - HornModded(50))
ChangeEmotion("shame","up",0.1,20 - HornModded(20))
}

ChangeEmotion("happy","down",1,25)
ChangeEmotion("anger","down",0.2,15)
ChangeEmotion("fear","up",0.6,25)

ChangeEmotion("sad","up",0.7,15)
mDriveCollectionMaster.BaseBreathRate += 0.3
if Chance(30) {
TwitchRun(irandom_range(5,10))
}
if Chance(30 - HornModded(10)) {
EyeSquint(irandom_range(2,3),true,irandom_range(40,200))
}
if Chance(25 + HornModded(25)) {
RandomVoc(0.9)
}
if Chance(15) {
MoveBackForward("retreat",irandom_range(5,10),irandom_range(10,25))
}
StopYawnBehaviour()
if Chance(15) {
ShiftAway(x,y,irandom_range(30,40),random(360))
}
ShiverChance(15)
if Chance(15) {
RandomShake()
}
}
}
}


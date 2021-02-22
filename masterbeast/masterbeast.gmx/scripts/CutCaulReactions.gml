///CutCaulReactions()

if DrivesAreOn() {
if position_meeting(mouse_x,mouse_y,mCaulParent)
and position_meeting(mouse_x,mouse_y,oCaulLead) = false and position_meeting(mouse_x,mouse_y,oCaulNub) = false {
ChanceToWake(100)
mDriveCollectionMaster.BaseBreathRate += 0.4

//Create Blood Splatter And Stain On Appropriate Surface

if IsInRitual() {
if ChanceToRitualReact() {
TwitchRun(irandom_range(5,20))
}
if ChanceToRitualReact() {
MoveBackForward("retreat",10,irandom_range(5,20))
}
if ChanceToRitualReact() {
HoldBreathFor(irandom_range(60,130))
}
if ChanceToRitualReact() {
StartNumberSniffsBehaviour(1)
}
if ChanceToRitualReact() {
RandomShake()
}
if ChanceToRitualReact() {
VocaliseChance(100)
}
if ChanceToRitualReact() {
ShakeCaul(irandom_range(10,20),irandom_range(20,30))
}
if ChanceToRitualReact() {
StartCaulVibrateBehaviour(irandom_range(50,90))
}
if ChanceToRitualReact() {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
if ChanceToRitualReact() {
LittleJump()
}
if ChanceToRitualReact() {
StartOpenMouthBehaviour(0.3,irandom_range(50,100))
}
mCreatureController.BaseResistance -= 2
mCreatureController.BaseStress += 2
mCreatureController.BaseTiredness += 2
mCreatureController.BasePain += 5
mCreatureController.BaseAlive -= 0.05
} else {
if Chance(20 + ConsentAndPartMod(40)) {
TwitchRun(irandom_range(5,20))
}
if Chance(20 + ConsentAndPartMod(40)) {
MoveBackForward("retreat",10,irandom_range(5,20))
}
if Chance(20 + ConsentAndPartMod(40)) {
HoldBreathFor(irandom_range(60,130))
}
if Chance(20 + ConsentAndPartMod(40)) {
StartNumberSniffsBehaviour(1)
}
if Chance(20 + ConsentAndPartMod(40)) {
RandomShake()
}
if Chance(20 + ConsentAndPartMod(40)) {
VocaliseChance(100)
}
if Chance(20 + ConsentAndPartMod(40)) {
ShakeCaul(irandom_range(10,20),irandom_range(20,30))
}
if Chance(20 + ConsentAndPartMod(40)) {
StartCaulVibrateBehaviour(irandom_range(50,90))
}
if Chance(20 + ConsentAndPartMod(40)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
if Chance(20 + ConsentAndPartMod(40)) {
LittleJump()
}
if Chance(20 + ConsentAndPartMod(40)) {
StartOpenMouthBehaviour(0.3,irandom_range(50,100))
}
mCreatureController.BaseResistance += 2
mCreatureController.BaseStress += 2
mCreatureController.BaseTiredness += 2
mCreatureController.BasePain += 5
mCreatureController.BaseAlive -= 0.05
mCreatureController.CloseToAnne -= 2
mCreatureController.BaseTrust -= 2
mCreatureController.BaseSubIntent -= 2
ChangeEmotion("shame","up",0.4,4)
mCreatureController.BaseLust -= 2
if mCreatureController.Triad > 0 {
ChangeEmotion("anger","up",0.4,4)
ChangeEmotion("sad","up",0.4,4)
} else {
ChangeEmotion("fear","up",0.4,4)
}
ChangeEmotion("happy","down",0.4,4)
}
}
}

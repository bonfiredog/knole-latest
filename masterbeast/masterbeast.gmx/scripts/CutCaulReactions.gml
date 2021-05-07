///CutCaulReactions()

if mDriveCollectionMaster.RealReactionsOn = true {  
if position_meeting(mouse_x,mouse_y,mCaulParent)
and position_meeting(mouse_x,mouse_y,oCaulLead) = false and position_meeting(mouse_x,mouse_y,oCaulNub) = false {
ChanceToWake(100)
mDriveCollectionMaster.BaseBreathRate += 0.01

//Create Blood Splatter And Stain On Appropriate Surface

if IsInRitual() {
if ChanceToRitualReact() 
* ReactChance() {
TwitchRun(irandom_range(5,20))
}
if ChanceToRitualReact() 
* ReactChance() {
HoldBreathFor(irandom_range(60,130))
}
if ChanceToRitualReact() 
* ReactChance() {
StartNumberSniffsBehaviour(1)
}
if ChanceToRitualReact() 
* ReactChance() {
RandomShake()
}
if ChanceToRitualReact() 
* ReactChance() {
VocaliseChance(100)
}
if ChanceToRitualReact() 
* ReactChance() {
ShakeCaul(irandom_range(10,20),irandom_range(20,30))
}
if ChanceToRitualReact() 
* ReactChance() {
StartCaulVibrateBehaviour(irandom_range(50,90))
}
if ChanceToRitualReact() 
* ReactChance() {
ShiftAway(mouse_x,mouse_y,irandom_range(100,200),random(360))
}
if ChanceToRitualReact() 
* ReactChance() {
LittleJump()
}
if ChanceToRitualReact() 
* ReactChance() {
StartOpenMouthBehaviour(0.3,irandom_range(50,100))
}
mCreatureController.BaseResistance -= 2  * mPlotController.ISModifier
mCreatureController.BaseStress += 2  * mPlotController.ISModifier
mCreatureController.BaseTiredness += 2  * mPlotController.ISModifier
mCreatureController.BasePain += 5  * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.05  * mPlotController.ISModifier
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
ShiftAway(mouse_x,mouse_y,irandom_range(100,200),random(360))
}
if Chance(20 + ConsentAndPartMod(40)) {
LittleJump()
}
if Chance(20 + ConsentAndPartMod(40)) {
StartOpenMouthBehaviour(0.3,irandom_range(50,100))
}
mCreatureController.BaseResistance += 2 * mPlotController.ISModifier
mCreatureController.BaseStress += 2 * mPlotController.ISModifier
mCreatureController.BaseTiredness += 2 * mPlotController.ISModifier
mCreatureController.BasePain += 5 * mPlotController.ISModifier
mCreatureController.BaseAlive -= 0.05 * mPlotController.ISModifier
mCreatureController.CloseToAnne -= 2 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 2 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 2 * mPlotController.ISModifier
ChangeEmotion("shame","up",0.4,4)
mCreatureController.BaseLust -= 2  * mPlotController.ISModifier
if mCreatureController.Triad > 0 {
ChangeEmotion("anger","up",0.4,4)
ChangeEmotion("sad","up",0.4,4)
} else {
ChangeEmotion("fear","up",0.4,4)
}
ChangeEmotion("happy","down",0.4,4)
}
}
mDriveCollectionMaster.alarm[1] = 60
}

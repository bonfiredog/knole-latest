///CaulShotReactions

if IsAsleep() = false and mDriveCollectionMaster.Dozing = false and mCreatureController.Alive > 20 and PlayerViewOverObject(oCaulJug) and AmountForward(80){

CaulLookIntensity += 0.03 + ((0.03 / 100) * mCreatureController.Lust)


if IsInRitual() {
ISUp(BaseLust,((0.03 / 100) * CaulLookIntensity))
ISUp(BaseTrust,((0.03 / 100) * CaulLookIntensity))
ChangeEmotionStep("happy","up",((0.03 / 100) * CaulLookIntensity))
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
MoveToXY(oCaulJug.x,oCaulJug.y,irandom_range(10,20),mInterfaceController.CurrentView,50)
}
} else {
if Consented() {
ISDown(BaseResistance,((0.03 / 100) * CaulLookIntensity))
ISUp(BaseLust,((0.03 / 100) * CaulLookIntensity))
ChangeEmotionStep("shame","down",((0.03 / 100) * CaulLookIntensity))
if mCreatureController.Triad < 0 {
ChangeEmotionStep("fear","up",((0.03 / 100) * CaulLookIntensity))
}
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
MoveToXY(oCaulJug.x,oCaulJug.y,irandom_range(10,20),mInterfaceController.CurrentView,50)
}
} else {
ChangeEmotionStep("shame","up",((0.03 / 100) * CaulLookIntensity))
ChangeEmotionStep("happy","down",((0.03 / 100) * CaulLookIntensity))
ISDown(BaseTrust,((0.03 / 100) * CaulLookIntensity))
ISUp(BaseStress,((0.03 / 100) * CaulLookIntensity))
ISDown(BaseResistance,((0.03 / 100) * CaulLookIntensity))

if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
VocaliseChance(100)
}
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
ShiftAway(oCaulJug.x,oCaulJug.y,irandom_range(60,150),random(360))
}
if mCreatureController.Resistance > 50 {
ChangeEmotionStep("anger","up",((0.03 / 100) * CaulLookIntensity))
}
ISUp(BaseLust,((0.03 / 100) * CaulLookIntensity))
if mCreatureController.Triad < 0 {
ChangeEmotionStep("fear","up",((0.03 / 100) * CaulLookIntensity))
}
}
}
mDriveCollectionMaster.BaseBreathRate += (0.003 / 100) * CaulLookIntensity
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
ShiverChance(100)
}
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
StartCaulVibrateBehaviour(irandom_range(40,200))
}
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
ShakeCaul(mCreatureController.Lust / 10,irandom_range(40,90))
}
if Chance(0.5 + ((2 / 100) * CaulLookIntensity)) {
StartSwallowBehaviour(10,60)
}



} else {
if CaulLookIntensity > 0 {
CaulLookIntensity -= 1
}
}

CaulLookIntensity = clamp(CaulLookIntensity,0,100)





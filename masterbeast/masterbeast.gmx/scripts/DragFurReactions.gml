///DragFurReactions()

if mDriveCollectionMaster.RealReactionsOn = true {

if AmountForward(80) and IsAlive() {

DragFurTimer += 1

ChanceToWake(-0.005 - ((0.005 / 200) * DragFurTimer))
mCreatureController.BaseTrust += 0.005 + ((0.005 / 200) * DragFurTimer)
mCreatureController.BaseTiredness += 0.005 + ((0.005 / 200) * DragFurTimer)
mCreatureController.CloseToAnne -= 0.005 + ((0.005 / 200) * DragFurTimer)
mCreatureController.BaseLust += 0.005 + ((0.005 / 200) * DragFurTimer)
mCreatureController.BaseSubIntent += 0.005 + ((0.005 / 200) * DragFurTimer)

if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
EyeSquint(irandom_range(0,3),true,irandom_range(30,150))
}

if Chance(0.005 - ((0.03 / 200) * DragFurTimer)) {
TwitchIfNearBP(mFinger.x,mFinger.y,200)
}

if Chance(0.005 + ((0.005 / 200) * DragFurTimer)) {
StartYawnBehaviour()
}

//Not In Ritual Only
if IsInRitual() = false {
if Chance(0.005 + ((0.005 / 200) * DragFurTimer)) {
RandomVoc(0.2)
}

if mCreatureController.Lust > 60 {
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
RandomShake()
}
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
StartCaulVibrateBehaviour(40)
}
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
ShakeCaul(irandom_range(10,20),irandom_range(30,50))
}
}


if mCreatureController.Triad > 0 {
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
MoveBackForward("comeforward",MoveSpeedCalc(),irandom_range(5,15))
}
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
NodUpDown(irandom_range(1,3))
}
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
mCreatureController.BaseResistance += 0.005 + ((0.005 / 200) * DragFurTimer)
mCreatureController.BaseStress += 0.005 + + ((0.005 / 200) * DragFurTimer)
ChangeEmotionStep("fear","down",0.005 + ((0.1 / 200) * DragFurTimer))
ChangeEmotionStep("anger","down",0.005 + ((0.1 / 200) * DragFurTimer))
ChangeEmotionStep("happy","up",0.005 + ((0.1 / 200) * DragFurTimer))
ChangeEmotionStep("shame","down",0.005 + ((0.1 / 200) * DragFurTimer))
ChangeEmotionStep("sad","down",0.005 + ((0.1 / 200) * DragFurTimer))

} else {
mCreatureController.BaseResistance -= 0.005 + ((0.005 / 200) * DragFurTimer)
mCreatureController.BaseStress -= 0.005 + + ((0.005 / 200) * DragFurTimer)
}

} else {
if mInterfaceController.Healing = false {
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
MoveBackForward("retreat",MoveSpeedCalc(),irandom_range(5,15))
}
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
RandomShake()
}
if Chance(0.1 + ((0.1 / 200) * DragFurTimer)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
ChangeEmotionStep("fear","up",0.005 + ((0.1 / 200) * DragFurTimer))
ChangeEmotionStep("shame","up",0.005 + ((0.1 / 200) * DragFurTimer))
if mEmotionSubController.FearActivation < 50 {
ChangeEmotionStep("anger","up",0.005 + ((0.1 / 200) * DragFurTimer))
}
ChangeEmotionStep("happy","down",0.005 + ((0.1 / 200) * DragFurTimer))
}
}


//In Ritual
} else {
if ChanceToRitualReact() / (100 - ((50 / 200) * DragFurTimer)) {
RandomShake()
}
if ChanceToRitualReact() / (100 - ((50 / 200) * DragFurTimer)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}

}

}
}


DragFurTimer = clamp(DragFurTimer,0,200)

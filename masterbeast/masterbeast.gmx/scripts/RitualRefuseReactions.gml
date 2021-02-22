///RitualRefuseReactions()

//Chance to shake its head
if Chance(50) {
StartShiverBehaviour(0.2,irandom_range(80,230),irandom_range(20,40))
}

if Chance(50) {
MoveBackForwardUnCapped("retreat",irandom_range(60,120),irandom_range(10,20) + (10 / 100) * (100 - mCreatureController.BaseTrust))
}

if Chance(40) {
RandomVoc(irandom_range(0.5,1.2) + (0.5 / 100) * mEmotionSubController.AngerActivation)
}

mCreatureController.BaseLust -= 5
mCreatureController.BaseResistance += 5
mCreatureController.CloseToAnne -= 2

ChangeEmotion("happy","up",0.2,5)
ChangeEmotion("anger","up",0.5,10)
ChangeEmotion("fear","down",0.1,7)
ChangeEmotion("shame","down",0.1,7)

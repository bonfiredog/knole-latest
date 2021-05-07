///RandomiseState()

with mCreatureController {
BaseLust = irandom_range(0,100)
BaseTiredness = irandom_range(0,100)
BasePain = irandom_range(0,100)
BaseStress = irandom_range(0,100)
CloseToAnne = irandom_range(0,100)
BaseSubIntent = random_range(-1,1)
BaseTrust = irandom_range(0,100)
BaseResistance = irandom_range(0,100)
}

with mEmotionSubController {
HappyBaseActivation = irandom_range(0,100)
SadBaseActivation = irandom_range(0,100)
AngerBaseActivation = irandom_range(0,100)
FearBaseActivation = irandom_range(0,100)
ShameBaseActivation = irandom_range(0,100)
SurpriseBaseActivation = irandom_range(0,100)
}

///All modifiers for the Tiredness value.

TirednessMod = 0
//Pain makes tiredness go up
+ ((3 / 100) * Pain)
//Tiredness Throughout The Week
+ ((30 / 7) * mWorldController.TirWeekMod)
//Less alive makes tiredness go up
+ (abs(100 - Alive) / 1.5)

return BaseTiredness + TirednessMod

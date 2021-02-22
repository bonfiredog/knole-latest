///All modifiers for the Tiredness value.

TirednessMod = 0

//Stress makes tiredness go up
+ ((3 / 100) * Stress)
//Pain makes tiredness go up
+ ((3 / 100) * Pain)
//Tiredness Throughout The Week
+ ((30 / 7) * mWorldController.TirWeekMod)
//Less alive makes tiredness go up
+ (abs(100 - Alive) / 1.5)

return BaseTiredness + TirednessMod

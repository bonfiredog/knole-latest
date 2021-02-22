///All modifiers for the Thirst value.

ThirstMod = 0

//------------Emotional Modifiers

//Pain makes thirst go down.
- (Pain / 30)
//Stress makes thirst go down.
- (Stress / 30)



return BaseThirst + ThirstMod

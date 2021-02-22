///All modifiers for the Lust value.

LustMod = 0

//Pain makes lust go down
- (Pain / 30)
//Tiredness makes lust go down
- (Tiredness / 30)
//Stress makes lust go down
- (Stress / 50)
//Fear makes lust go down
- (mEmotionSubController.FearActivation / 50)
//Sadness makes lust go down
- (mEmotionSubController.SadActivation / 50)
//Shame makes lust go down.
- (mEmotionSubController.ShameActivation / 50)
//Less alive makes it go down.
- ((40 / 100) * (100 - Alive))
+ mWorldController.MoonLustMod / 2
//Close To Anne makes it go up
+ ((20 / 100) * mCreatureController.CloseToAnne)
//Low Alive makes Lust go up
+ LowAliveMod(35)



return BaseLust + LustMod

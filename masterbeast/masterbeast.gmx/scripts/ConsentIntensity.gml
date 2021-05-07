///ConsentIntensity()

ConsentInten = 
mEmotionSubController.ShameActivation
- mCreatureController.Lust
- mWorldController.MoonLustMod
+ mEmotionSubController.FearActivation
- mEmotionSubController.HappyActivation
+ mEmotionSubController.AngerActivation
- (mCreatureController.Triad * 100)
- mCreatureController.Trust
+ mCreatureController.Alive
+ mCreatureController.Pain 
+ mCreatureController.Resistance
- random(100)

ConsentInten = clamp(ConsentInten,0,100)

return ConsentInten



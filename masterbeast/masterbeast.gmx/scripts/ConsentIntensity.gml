///ConsentIntensity()

ConsentInten = 
mCreatureController.Shame
- mCreatureController.Lust
- mWorldController.MoonLustMod
+ mCreatureController.Fear
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



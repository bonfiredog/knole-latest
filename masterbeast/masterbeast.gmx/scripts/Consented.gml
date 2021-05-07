///Consented()

ConsentChance = 
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

if random(100) < ConsentChance { 
return true
} else {
return false
}

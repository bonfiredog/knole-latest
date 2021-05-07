///ZoomSpeedCalc()

return 50 
- ((5 / 100) * mCreatureController.Lust)
+ ((5 / 100) * mCreatureController.Tiredness)
+ ((5 / 100) * mCreatureController.Pain)
+ ((5/ 100) * (100 - mCreatureController.Alive))
- ((5 / 100) * mCreatureController.CloseToAnne)
+ ((10 / 100) * mCreatureController.Resistance)
- ((5 / 100) * mEmotionSubController.HappyActivation)
+ ((5 / 100) * mEmotionSubController.AngerActivation)
+ ((5 / 100) * mEmotionSubController.ShameActivation)
+ ((5 / 100) * mEmotionSubController.SadActivation)
- ((10 / 100) * mEmotionSubController.FearActivation)
- ((15 * mDriveCollectionMaster.InRitual))


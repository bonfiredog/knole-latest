///All modifiers for the Temperature value.

TemperatureMod = 0

//Tiredness makes temperature go down.
- (Tiredness / 50)
//Fear makes temperature go down.
- (mEmotionSubController.FearActivation / 50)
//Shame makes temperature go down.
- (mEmotionSubController.ShameActivation / 50)
//Sadness makes temperature go down.
- (mEmotionSubController.SadActivation / 50)
//Anger makes temperature go up.
+ (mEmotionSubController.AngerActivation / 50)

//------------Emotional Modifiers

return BaseTemperature + TemperatureMod

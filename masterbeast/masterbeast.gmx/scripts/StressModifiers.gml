///All modifiers for the Stress value.

StressMod = 

//Tiredness makes stress go up.
(Tiredness / 50)
//Pain makes stress go up.
+ (Pain / 30)
//Thirst makes stress go up.
+ (Thirst / 50)
//Lust makes stress go down.
+ (Lust / 50)
//Being happy makes stress go down.
- (mEmotionSubController.HappyActivation / 50)
//Being angry makes stress go up.
+ (mEmotionSubController.AngerActivation / 50)
//Being surprised makes stress go up.
+ (mEmotionSubController.SurpriseActivation / 50)
//Being fearful makes stress go up.
+ (mEmotionSubController.FearActivation / 50)


//------------Emotional Modifiers



return BaseStress + StressMod

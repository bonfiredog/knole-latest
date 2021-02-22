///DrivePriorities()

//Falling Asleep
Drive1FinalPriority = Drive1FinalPriority
- ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 100) * mEmotionSubController.SurpriseActivation)
+ ((2 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * mCreatureController.Dirt)
+ (1 * TODMOD)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad) 
+ ((1 / 100) * (100 - mWorldController.LightLevelInMB))
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
+ (1 * HaveEatenToday)

//Player Leave
Drive2FinalPriority = Drive2FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((2 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.HappyActivation)
+ ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Thirst)
- ((1 / 100) * (100 - mCreatureController.Alive))
- ((1 / 100) * mEmotionSubController.HappyActivation)
+ ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * mEmotionSubController.ShameActivation)
- ((1 / 50) * (mCreatureController.Trust - 50))
- (1 * mCreatureController.Triad) 
- ((1 / 100) * mCreatureController.CloseToAnne)
- ((1 / 100) * (100 - mBehavioursDeliberative.PercentForward))
- (1 * mInterfaceController.PressBegun)
+ ((1 / 5) * mInterfaceController.Taps)
+ ((1 / 100) * mCreatureController.Resistance)

//Player Come
Drive3FinalPriority = Drive3FinalPriority
+ (((1 / 100) * mCreatureController.Stress) * mCreatureController.Triad)
+ (((1 / 100) * mCreatureController.Pain) * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Thirst)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.Lust)
- ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
+ (((1 / 100) * mEmotionSubController.FearActivation) * mCreatureController.Triad)
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
+ ((1 / 100) * (100 - mWorldController.LightLevelInMB))
- ((1 / 100) * mCreatureController.Resistance)

//Flee
Drive4FinalPriority = Drive4FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * mCreatureController.Thirst)
- ((2 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 50) * (mCreatureController.Trust - 50))
- (1 * TODMOD)
+ ((1 / 100) * mCreatureController.Dirt)
- (1 * mCreatureController.Triad)

//Retreat
Drive5FinalPriority = Drive5FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * mCreatureController.Tiredness)
- (((1 / 100) * mCreatureController.Pain) * mCreatureController.Triad)
- ((2 / 100) * (100 - mCreatureController.Alive))
- (((1 / 100) * mEmotionSubController.SadActivation) * mCreatureController.Triad)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
- ((1 / 50) * (mCreatureController.Trust - 50))
- (1 * mCreatureController.Triad)
+ ((1 / 100) * mBehavioursDeliberative.PercentForward)
- ((1 / 100) * mCreatureController.Lust)
- ((1 / 100) * mEmotionSubController.HappyActivation)
+ ((1 / 100) * mEmotionSubController.AngerActivation)
+ ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 100) * (100 - mWorldController.LightLevelInMB))
- (1 * TODMOD)
+ ((1 / 100) * mCreatureController.Resistance)

//ToDefaultPos
Drive6FinalPriority = Drive6FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SurpriseActivation)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((2 / 9000) * mCreatureController.TimeSinceLastMotion)
+ ((1 / 100) * mCreatureController.Resistance)
+ ((1 / 100) * mCreatureController.Dirt)
- ((1 / 50) * (mCreatureController.Trust - 50))
- (1 * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
+ ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 100) * mCreatureController.Resistance)

//Come Forward
Drive7FinalPriority = Drive7FinalPriority
- ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * mCreatureController.Thirst)
+ ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ (((1 / 100) * mCreatureController.Pain) * mCreatureController.Triad)
+ (((1 / 100) * mEmotionSubController.SadActivation) * mCreatureController.Triad)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.Resistance)
+ (1 * TODMOD)
+ ((1 / 100) * (100 - mWorldController.LightLevelInMB))
+ (((1 / 100) * mEmotionSubController.FearActivation) * mCreatureController.Triad)
- ((1 / 100) * mEmotionSubController.AngerActivation)
+ ((1 / 100) * mEmotionSubController.HappyActivation)

//Go To Eat
Drive8FinalPriority = Drive8FinalPriority
+ ((3 / 100) * TimeThroughEatingHour())
+ ((1 / 100) * (100 - EatenTodayAmount))
+ ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
- (1 * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
+ ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 100) * mCreatureController.Resistance)

//Accept Ritual
Drive9FinalPriority = Drive9FinalPriority
- ((1 / 100) * mCreatureController.Stress) 
- ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * mCreatureController.Thirst)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
+ ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 100) * mCreatureController.Resistance)
- ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ (1 * mCreatureController.Triad)
+ ((1 / 50) * (mCreatureController.Trust - 50))

//Doze
Drive10FinalPriority = Drive10FinalPriority
+ ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Stress)

- ((1 / 100) * mCreatureController.Thirst)
- ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.SurpriseActivation)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
+ ((1 / 100) * (100 - mWorldController.LightLevelInMB))
+ (1 * EatenToday)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)

//Clean Gound
Drive11FinalPriority = Drive11FinalPriority
+ ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
+ ((1 / 100) * mCreatureController.Dirt)
- ((1 / 100) * mCreatureController.Resistance)

//Stroke Nose
Drive12FinalPriority = Drive12FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
- ((1 / 60) * mCreatureController.Pain)
+ ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ (((1 / 100) * mEmotionSubController.SadActivation) * mCreatureController.Triad)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mCreatureController.Resistance)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)

//Inspect Mansion
Drive13FinalPriority = Drive13FinalPriority
- ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 60) * mCreatureController.Pain)
+ ((1 / 100) * (100 - mCreatureController.Alive))
- ((1 / 100) * mEmotionSubController.SadActivation)
+ ((1 / 100) * mEmotionSubController.SurpriseActivation)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 100) * mBehavioursDeliberative.PercentForward)
+ ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 100) * (100 = mWorldController.LightLevelInMB))
- ((1 / 100) * mCreatureController.Resistance)

//Follow Command
Drive14FinalPriority = Drive14FinalPriority
- ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * (100 - mCreatureController.Alive))
- ((1 / 60) * mCreatureController.Pain)
- ((1 / 100) * mEmotionSubController.SadActivation)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
+ (1 * mCreatureController.Triad)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
+ ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 100) * mCreatureController.Resistance)
- (1 * mBehavioursDeliberative.CrunchingActive)

//Clean Skin
Drive15FinalPriority = Drive15FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
- ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
- ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 100) * mCreatureController.Resistance)
+ ((1 / 100) * mCreatureController.Dirt)

//Player Get Off
Drive16FinalPriority = Drive16FinalPriority
+ ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * mCreatureController.Pain)
+ ((1 / 100) * mCreatureController.Thirst)
- ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 100) * mEmotionSubController.ShameActivation)
- ((1 / 50) * (mCreatureController.Trust - 50))
- (1 * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 100) * mCreatureController.Resistance)
+ ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mCreatureController.Lust)

//General Vocalise
Drive17FinalPriority = Drive17FinalPriority
- ((1 / 100) * (100 - mCreatureController.Alive))
- (1 * InRitual)
+ ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Pain)
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.ShameActivation)
- ((1 / 100) * mEmotionSubController.SurpriseActivation)
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
+ ((1 / 100) * (100 - mWorldController.LightLevelInMB))
+ ((1 / 100) * mCreatureController.Resistance)
- ((1 / 100) * mEmotionSubController.FearActivation)
+ ((1 / 100) * mEmotionSubController.AngerActivation)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mCreatureController.Lust)
- ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)

//Touch Caul
Drive18FinalPriority = Drive18FinalPriority
- ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.SurpriseActivation)
- ((1 / 100) * mEmotionSubController.ShameActivation)
- (5 * ServicedToday)
+ ((2 /  9000) * TimeSinceServiceStart)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ ((2 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- ((1 / 100) * mEmotionSubController.FearActivation)
- ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
- ((1 / 100) * (100 - mWorldController.LightLevelInMB))
+ (1 * TODMOD)
- ((1 / 100) * mCreatureController.Resistance)
- ((1 / 100) * mCreatureController.Dirt)
+ (1 * PlayerViewOverObject(mCaulParent))
+ ((1 / 73) * oCaulLiquid.LiquidY)

//Hair Brush
Drive19FinalPriority = Drive19FinalPriority
+ (((1 / 100) * mCreatureController.Stress) * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
+ ((1 / 100) * (100 - mCreatureController.Alive))
+ (((1 / 100) * mEmotionSubController.SadActivation) * mCreatureController.Triad)
+ (((1 / 100) * mEmotionSubController.ShameActivation) * mCreatureController.Triad)
+ (1 * mInterfaceController.PressBegun)
+ ((1 / 100) * mCreatureController.Dirt)
- ((1 / 100) * mCreatureController.Resistance)
+ ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
+ (((1 / 100) * mEmotionSubController.FearActivation) * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)

//Player Speak
Drive20FinalPriority = Drive20FinalPriority
+ (TimeSinceLastSpeech / 1000)
- ((1 / 100) * mCreatureController.Stress)
+ ((1 / 100) * (mCreatureController.Alive))
- ((1 / 100) * mCreatureController.Tiredness)
- ((1 / 100) * mCreatureController.Pain)
+ (((1 / 100) * mEmotionSubController.SadActivation) * mCreatureController.Triad)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
- (1 * mCreatureController.Triad)
- ((1 / 100) * mCreatureController.CloseToAnne)
- ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
+ (((1 / 100) * mEmotionSubController.FearActivation) * mCreatureController.Triad)
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
+ (1 * TODMOD)
- ((1 / 100) * mCreatureController.Resistance)

//Player Touch
Drive21FinalPriority = Drive21FinalPriority
+ (TimeSinceLastTouch / 1000)
- ((1 / 100) * mCreatureController.Stress)
- ((1 / 100) * mCreatureController.Pain)
+ ((1 / 100) * (100 - mCreatureController.Alive))
- ((1 / 100) * mEmotionSubController.SadActivation)
- ((1 / 100) * mEmotionSubController.ShameActivation)
+ ((1 / 50) * (mCreatureController.Trust - 50))
+ (1 * mCreatureController.Triad)
+ ((1 / 100) * mCreatureController.CloseToAnne)
+ ((1 / 100) * mCreatureController.Lust)
+ ((1 / 100) * mEmotionSubController.HappyActivation)
- ((1 / 100) * mEmotionSubController.AngerActivation)
- (((1 / 100) * mEmotionSubController.FearActivation) * mCreatureController.Triad)
+ ((1 / 9000) * mCreatureController.TimeSinceLastMotion)
- ((1 / 100) * mCreatureController.Resistance)
- ((1 / 100) * mCreatureController.Tiredness)
+ ((1 / 100) * mCreatureController.Dirt)
+ (instance_number(oWen) / 100)
+ (instance_number(oWound) / 100)
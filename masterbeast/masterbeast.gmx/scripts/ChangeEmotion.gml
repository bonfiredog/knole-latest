///ChangeEmotion(emotion,direction,rate,amount)

WriteToLog("Emotion changed: " + string(argument0) + " went " + string(argument1) + " " + string(argument3) + " @ " + string(argument2))

with mEmotionSubController {
switch argument0 {
case "happy":
HappyGradual = true
HappyGradualDir = argument1
HappyGradualRate = argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333)) 
HappyGradualAmount = (argument3 * (1 - ((0.3 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))) * mPlotController.ChangeModifier
break;
case "sad":
SadGradual = true
SadGradualDir = argument1
SadGradualRate = argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333)) 
SadGradualAmount = (argument3 * (1 - ((0.3 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))) * mPlotController.ChangeModifier
break;
case "anger":
AngerGradual = true
AngerGradualDir = argument1
AngerGradualRate = argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333)) 
AngerGradualAmount = (argument3 * (1 - ((0.3 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))) * mPlotController.ChangeModifier
break;
case "surprise":
SurpriseGradual = true
SurpriseGradualDir = argument1
SurpriseGradualRate = argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333)) 
SurpriseGradualAmount = (argument3 * (1 - ((0.3 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))) * mPlotController.ChangeModifier 
break;
case "fear":
FearGradual = true
FearGradualDir = argument1
FearGradualRate = argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333)) 
FearGradualAmount = (argument3 * (1 - ((0.3 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))) * mPlotController.ChangeModifier 
break;
case "shame":
ShameGradual = true
ShameGradualDir = argument1
ShameGradualRate = argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333)) 
ShameGradualAmount = (argument3 * (1 - ((0.3 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))) * mPlotController.ChangeModifier 
break;
}
}

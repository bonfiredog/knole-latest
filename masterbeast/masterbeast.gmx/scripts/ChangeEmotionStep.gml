///ChangeEmotionStep(emotion,direction,amount)

if mCreatureController.Alive > 0 {
WriteToLog("Emotion changed: " + string(argument0 + " went " + argument1 + " @ " + argument1))

with mEmotionSubController {
switch argument0 {
case "happy":
if HappyGradual = false {
if argument1 = "down" {
HappyBaseActivation -= argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive)) + (mWorldController.NightEmoMod / 333))
} else if argument1 = "up" {
HappyBaseActivation += argument2* (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333))
}
}
break;
case "sad":
if SadGradual = false {
if argument1 = "down" {
SadBaseActivation -= argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
} else if argument1 = "up" {
SadBaseActivation += argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
}
}
break;
case "anger":
if AngerGradual = false {
if argument1 = "down" {
AngerBaseActivation -= argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
} else if argument1 = "up" {
AngerBaseActivation += argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
}
}
break;
case "surprise":
if SurpriseGradual = false {
if argument1 = "down" {
SurpriseBaseActivation -= argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
} else if argument1 = "up" {
SurpriseBaseActivation += argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
}
}
break;
case "fear":
if FearGradual = false {
if argument1 = "down" {
FearBaseActivation -= argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
} else if argument1 = "up" {
FearBaseActivation += argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
}
}
break;
case "shame":
if ShameGradual = false {
if argument1 = "down" {
ShameBaseActivation -= argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
} else if argument1 = "up" {
ShameBaseActivation += argument2 * (1 - ((0.5 / 100) * (100 - mCreatureController.Alive))+ (mWorldController.NightEmoMod / 333)) 
}
}
break;
}
}
}

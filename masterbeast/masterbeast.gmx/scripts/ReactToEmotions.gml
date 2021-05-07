///ReactToEmotions


if PreviousEmotion != CurrentEmotionMain {
ChangeEmotion("surprise","up",0.7,30)
}

if mDriveCollectionMaster.RealReactionsOn = true {

switch CurrentEmotionMain {
case "Mainly angry, ":
if Triad >= 0 {
ChangeEmotion("shame","up",1,20)
ChangeEmotion("fear","up",1,25)
ChangeEmotion("sad","up",0.1,24)
mCreatureController.BaseResistance -= 5 * mPlotController.ISModifier
mCreatureController.BaseStress += 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
} else {
ChangeEmotion("anger","up",2,25)
ChangeEmotion("fear","up",1,25) 
mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
mCreatureController.BaseStress += 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
}
ChangeEmotion("happy","down",2,20)
mDriveCollectionMaster.BaseBreathRate += 0.0003
mCreatureController.CloseToAnne -= 3  * mPlotController.ISModifier
if IsInRitual() {
mWeatherSubController.RitualWeather = "storm"
}
break;

case "Mainly contemptuous, ":
if Triad >= 0 {
ChangeEmotion("shame","up",2,25)
ChangeEmotion("fear","up",1,25)
ChangeEmotion("sad","up",1,20)
mCreatureController.BaseResistance -= 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseStress += 5 * mPlotController.ISModifier
} else {
ChangeEmotion("anger","up",1,25)
ChangeEmotion("fear","up",2,25)
mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
mCreatureController.BaseStress += 5 * mPlotController.ISModifier

}
ChangeEmotion("happy","down",1,25)
mDriveCollectionMaster.BaseBreathRate += 0.0005
mCreatureController.CloseToAnne -= 3  * mPlotController.ISModifier
if IsInRitual() {
mWeatherSubController.RitualWeather = "rain"
}
break;

case "Mainly disgusted, ":
if Triad >= 0 {
ChangeEmotion("shame","up",1,25)
ChangeEmotion("fear","up",1,25)
ChangeEmotion("sad","up",1,25)
mCreatureController.BaseResistance -= 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
} else {
ChangeEmotion("anger","up",2,25)
ChangeEmotion("fear","up",1,25)
mCreatureController.BaseResistance += 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.05 * mPlotController.ISModifier
}
ChangeEmotion("happy","down",1,25)
mDriveCollectionMaster.BaseBreathRate += 0.0005
mCreatureController.CloseToAnne -= 3  * mPlotController.ISModifier
if IsInRitual() {
mWeatherSubController.RitualWeather = "rain"
}
break;

case "Mainly afraid, ":
if Triad >= 0 {
ChangeEmotion("sad","up",1,25)
ChangeEmotion("shame","up",1,25)
mCreatureController.BaseResistance -= 5  * mPlotController.ISModifier
} else {
ChangeEmotion("anger","down",1,25)
ChangeEmotion("happy","up",1,25)
mCreatureController.BaseResistance += 5  * mPlotController.ISModifier
}
ChangeEmotion("fear","down",1,25)
mDriveCollectionMaster.BaseBreathRate += 0.0005
mCreatureController.CloseToAnne -= 3  * mPlotController.ISModifier
if IsInRitual() {
mWeatherSubController.RitualWeather = "rain"
}
break;

case "Mainly happy, ":
if Triad >= 0 {
ChangeEmotion("happy","up",1,25)
ChangeEmotion("sad","down",1,25)
ChangeEmotion("shame","down",1,25)
mCreatureController.BaseStress -= 5 * mPlotController.ISModifier
mCreatureController.BaseSubIntent += 0.05 * mPlotController.ISModifier
} else {
mCreatureController.BaseStress -= 5
ChangeEmotion("angry","down",1,25)
ChangeEmotion("sad","down",1,20)
mCreatureController.BaseSubIntent += 0.05 * mPlotController.ISModifier
}
ChangeEmotion("fear","down",1,20)
mDriveCollectionMaster.BaseBreathRate -= 0.01 
mCreatureController.CloseToAnne -= 3  * mPlotController.ISModifier
if IsInRitual() {
mWeatherSubController.RitualWeather = "windy"
}
break;

case "Mainly sad, ":
if Triad >= 0 {
ChangeEmotion("sad","up",1,20)
ChangeEmotion("happy","down",1,20)
ChangeEmotion("shame","up",1,25)
mCreatureController.BaseStress += 5 * mDriveCollectionMaster.ISModifier
} else {
mCreatureController.BaseStress -= 5 * mDriveCollectionMaster.ISModifier
ChangeEmotion("happy","up",1,20)
ChangeEmotion("shame","down",1,20)
}
mDriveCollectionMaster.BaseBreathRate -= 0.01
mCreatureController.CloseToAnne -= 3  * mPlotController.ISModifier
break;
default:
mCreatureController.CloseToAnne += 3  * mPlotController.ISModifier
if IsInRitual() {
mWeatherSubController.RitualWeather = "hail"
}
break;

case "Mainly neutral, ":
if IsInRitual() {
mWeatherSubController.RitualWeather = "calm"
}
break;
}
mDriveCollectionMaster.alarm[1] = 60
}


///SetWeatherModsDayAlpha

//Create the various weather modifiers for the Envirolight depending on the current weather type.

switch mWorldController.ThisPeriodWT {
case 0:
CurrentWeatherMod = 0;
break;
case 1:
CurrentWeatherMod = 0;
break;
case 2:
CurrentWeatherMod = 0.5;
break;
case 3:
CurrentWeatherMod = 0.5;
break;
case 5:
CurrentWeatherMod = 0;
break
case 6:
CurrentWeatherMod = 0;
break;
case 7:
CurrentWeatherMod = 1;
break;
case 8:
CurrentWeatherMod = 1;
break;
case 9:
case 10:
case 11:
case 12:
CurrentWeatherMod = 0.5;
break;
case 13:
case 14:
case 15:
CurrentWeatherMod = 1;
break;
case 16:
case 17:
case 18:
CurrentWeatherMod = 0.75;
break;
case 19:
case 20:
case 21:
CurrentWeatherMod = 0.5;
break;
case 22:
case 23:
case 24:
CurrentWeatherMod = -0.25;
break;
case 25:
case 26:
case 27:
CurrentWeatherMod = -0.5;
break;
case 28:
case 29:
case 30:
CurrentWeatherMod = 1;
break;
}

switch mWorldController.NextPeriodWT {
case 0:
NextWeatherMod = 0;
break;
case 1:
NextWeatherMod = 0;
break;
case 2:
NextWeatherMod = 0.5;
break;
case 3:
NextWeatherMod = 0.5;
break;
case 5:
NextWeatherMod = 0;
break
case 6:
NextWeatherMod = 0;
break;
case 7:
NextWeatherMod = 1;
break;
case 8:
NextWeatherMod = 1;
break;
case 9:
case 10:
case 11:
case 12:
NextWeatherMod = 0.5;
break;
case 13:
case 14:
case 15:
NextWeatherMod = 1;
break;
case 16:
case 17:
case 18:
NextWeatherMod = 0.75;
break;
case 19:
case 20:
case 21:
NextWeatherMod = 0.5;
break;
case 22:
case 23:
case 24:
NextWeatherMod = -0.25;
break;
case 25:
case 26:
case 27:
NextWeatherMod = -0.5;
break;
case 28:
case 29:
case 30:
NextWeatherMod = 1;
break;
}

if mWorldController.CurrentWTMod <= 90 {
WeatherMod = ((CurrentWeatherMod / 2) + (((CurrentWeatherMod / 2) / 90) * CurrentWTMod))

} else if mWorldController.CurrentWTMod > 90 {
WeatherMod = ((CurrentWeatherMod / 90) * (mWorldController.CurrentWTMod - 90)) + (((NextWeatherMod / 2) / 90) * (mWorldController.CurrentWTMod - 90))
}

return CurrentEnviroLightAlphaBase + (WeatherMod / 10)

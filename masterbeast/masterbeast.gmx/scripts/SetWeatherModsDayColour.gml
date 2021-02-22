///SetWeatherModsDayColour

//Change the modifiers for the Envirolight Alpha based on the weather.

switch mWorldController.ThisPeriodWT {
case 0:
CurrentWeatherMod = 1;
break;
case 1:
CurrentWeatherMod = 1;
break;
case 2:
CurrentWeatherMod = 0.3;
break;
case 3:
CurrentWeatherMod = 0.3;
break;
case 5:
CurrentWeatherMod = 2.0;
break
case 6:
CurrentWeatherMod = 2.0;
break;
case 7:
CurrentWeatherMod = 0.25;
break;
case 8:
CurrentWeatherMod = 0.25;
break;
case 9:
case 10:
case 11:
case 12:
CurrentWeatherMod = 0.3;
break;
case 13:
case 14:
case 15:
CurrentWeatherMod = 0.25;
break;
case 16:
case 17:
case 18:
CurrentWeatherMod = 0.25;
break;
case 19:
case 20:
case 21:
CurrentWeatherMod = 0.25;
break;
case 22:
case 23:
case 24:
CurrentWeatherMod = 2.6
break;
case 25:
case 26:
case 27:
CurrentWeatherMod = 2.8;
break;
case 28:
case 29:
case 30:
CurrentWeatherMod = 0.1;
break;
default:
CurrentWeatherMod = 0
break;
}

switch mWorldController.NextPeriodWT {
case 0:
NextWeatherMod = 1;
break;
case 1:
NextWeatherMod = 1;
break;
case 2:
NextWeatherMod = 0.3;
break;
case 3:
NextWeatherMod = 0.3;
break;
case 5:
NextWeatherMod = 2.0;
break
case 6:
NextWeatherMod = 2.0;
break;
case 7:
NextWeatherMod = 0.25;
break;
case 8:
NextWeatherMod = 0.25;
break;
case 9:
case 10:
case 11:
case 12:
NextWeatherMod = 0.3;
break;
case 13:
case 14:
case 15:
NextWeatherMod = 0.25;
break;
case 16:
case 17:
case 18:
NextWeatherMod = 0.25;
break;
case 19:
case 20:
case 21:
NextWeatherMod = 0.25;
break;
case 22:
case 23:
case 24:
NextWeatherMod = 2.6
break;
case 25:
case 26:
case 27:
NextWeatherMod = 2.8;
break;
case 28:
case 29:
case 30:
NextWeatherMod = 0.1;
break;
default:
NextWeatherMod = 0
break;
}

if mWorldController.CurrentWTMod <= 90 {
WeatherMod = (CurrentWeatherMod / 2) + (((CurrentWeatherMod / 2) / 90) * mWorldController.CurrentWTMod)
} else if mWorldController.CurrentWTMod > 90 {
WeatherMod = ((CurrentWeatherMod / 90) * (mWorldController.CurrentWTMod - 90)) + (((NextWeatherMod / 2) / 90) * (mWorldController.CurrentWTMod - 90))
}

FinalR = CurrentEnviroLightColourBaseR ///* WeatherMod
FinalG = CurrentEnviroLightColourBaseG //* WeatherMod
FinalB = CurrentEnviroLightColourBaseB //* WeatherMod

return make_colour_rgb(FinalR,FinalG,FinalB)


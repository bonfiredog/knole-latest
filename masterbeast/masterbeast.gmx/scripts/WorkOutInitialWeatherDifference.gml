///WorkOutInitialWeatherDifference(Current_Period)

//How far into the current period are we? Change the weather data to reflect this.

CurrentPeriod = argument0

MinsSinceChange = (current_hour - CurrentPeriod) * 60 + current_minute

mWorldController.CurrentTemp = mWorldController.ThisPeriodTemp + (((abs(mWorldController.ThisPeriodTemp - mWorldController.NextPeriodTemp)) / 180) * MinsSinceChange)   
mWorldController.CurrentWindS = mWorldController.ThisPeriodWindS + (((abs(mWorldController.ThisPeriodWindS - mWorldController.NextPeriodWindS)) / 180) * MinsSinceChange)
mWorldController.CurrentWindD = mWorldController.ThisPeriodWindD + (((abs(mWorldController.ThisPeriodWindD - mWorldController.NextPeriodWindD)) / 180) * MinsSinceChange)
mWorldController.CurrentHumidity = mWorldController.ThisPeriodHumidity + (((abs(mWorldController.ThisPeriodHumidity - mWorldController.NextPeriodHumidity)) / 180) * MinsSinceChange)
mWorldController.CurrentWTMod = MinsSinceChange

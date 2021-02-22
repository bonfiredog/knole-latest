///GetCurrentWeatherValues

//Once the weather data has been pulled in from the server, get the period and current values depending on the current time.

switch current_hour {

case 0:
ThisPeriodWindS = real(TodayMidnightWindS);
ThisPeriodWindD = ConvertWindDToReal(TodayMidnightWindD);
ThisPeriodTemp = real(TodayMidnightTemp);
ThisPeriodWT = real(TodayMidnightWT);
ThisPeriodHumidity = real(TodayMidnightHumidity)

NextPeriodWindS = real(Today3amWindS);
NextPeriodWindD = ConvertWindDToReal(Today3amWindD);
NextPeriodTemp = real(Today3amTemp);
NextPeriodWT = real(Today3amWT);
NextPeriodHumidity = real(Today3amHumidity)
break;

case 1:
ThisPeriodWindS = real(TodayMidnightWindS);
ThisPeriodWindD = ConvertWindDToReal(TodayMidnightWindD);
ThisPeriodTemp = real(TodayMidnightTemp);
ThisPeriodWT = real(TodayMidnightWT);
ThisPeriodHumidity = real(TodayMidnightHumidity)

NextPeriodWindS = real(Today3amWindS);
NextPeriodWindD = ConvertWindDToReal(Today3amWindD);
NextPeriodTemp = real(Today3amTemp);
NextPeriodWT = real(Today3amWT);
NextPeriodHumidity = real(Today3amHumidity)
break;

case 2:
ThisPeriodWindS = real(TodayMidnightWindS);
ThisPeriodWindD = ConvertWindDToReal(TodayMidnightWindD);
ThisPeriodTemp = real(TodayMidnightTemp);
ThisPeriodWT = real(TodayMidnightWT);
ThisPeriodHumidity = real(TodayMidnightHumidity)

NextPeriodWindS = real(Today3amWindS);
NextPeriodWindD = ConvertWindDToReal(Today3amWindD);
NextPeriodTemp = real(Today3amTemp);
NextPeriodWT = real(Today3amWT);
NextPeriodHumidity = real(Today3amHumidity)
break;

case 3:
ThisPeriodWindS = real(Today3amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today3amWindD);
ThisPeriodTemp = real(Today3amTemp);
ThisPeriodWT = real(Today3amWT);
ThisPeriodHumidity = real(Today3amHumidity)

NextPeriodWindS = real(Today6amWindS);
NextPeriodWindD = ConvertWindDToReal(Today6amWindD);
NextPeriodTemp = real(Today6amTemp);
NextPeriodWT = real(Today6amWT);
NextPeriodHumidity = real(Today6amHumidity)
break;

case 4:
ThisPeriodWindS = real(Today3amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today3amWindD);
ThisPeriodTemp = real(Today3amTemp);
ThisPeriodWT = real(Today3amWT);
ThisPeriodHumidity = real(Today3amHumidity)

NextPeriodWindS = real(Today6amWindS);
NextPeriodWindD = ConvertWindDToReal(Today6amWindD);
NextPeriodTemp = real(Today6amTemp);
NextPeriodWT = real(Today6amWT);
NextPeriodHumidity = real(Today6amHumidity)
break;

case 5:
ThisPeriodWindS = real(Today3amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today3amWindD);
ThisPeriodTemp = real(Today3amTemp);
ThisPeriodWT = real(Today3amWT);
ThisPeriodHumidity = real(Today3amHumidity)

NextPeriodWindS = real(Today6amWindS);
NextPeriodWindD = ConvertWindDToReal(Today6amWindD);
NextPeriodTemp = real(Today6amTemp);
NextPeriodWT = real(Today6amWT);
NextPeriodHumidity = real(Today6amHumidity)
break;

case 6:
ThisPeriodWindS = real(Today6amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today6amWindD);
ThisPeriodTemp = real(Today6amTemp);
ThisPeriodWT = real(Today6amWT);
ThisPeriodHumidity = real(Today6amHumidity)

NextPeriodWindS = real(Today9amWindS);
NextPeriodWindD = ConvertWindDToReal(Today9amWindD);
NextPeriodTemp = real(Today9amTemp);
NextPeriodWT = real(Today9amWT);
NextPeriodHumidity = real(Today9amHumidity)
break;

case 7:
ThisPeriodWindS = real(Today6amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today6amWindD);
ThisPeriodTemp = real(Today6amTemp);
ThisPeriodWT = real(Today6amWT);
ThisPeriodHumidity = real(Today6amHumidity)

NextPeriodWindS = real(Today9amWindS);
NextPeriodWindD = ConvertWindDToReal(Today9amWindD);
NextPeriodTemp = real(Today9amTemp);
NextPeriodWT = real(Today9amWT);
NextPeriodHumidity = real(Today9amHumidity)
break;

case 8:
ThisPeriodWindS = real(Today6amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today6amWindD);
ThisPeriodTemp = real(Today6amTemp);
ThisPeriodWT = real(Today6amWT);
ThisPeriodHumidity = real(Today6amHumidity)

NextPeriodWindS = real(Today9amWindS);
NextPeriodWindD = ConvertWindDToReal(Today9amWindD);
NextPeriodTemp = real(Today9amTemp);
NextPeriodWT = real(Today9amWT);
NextPeriodHumidity = real(Today9amHumidity)
break;

case 9:
ThisPeriodWindS = real(Today9amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today9amWindD);
ThisPeriodTemp = real(Today9amTemp);
ThisPeriodWT = real(Today9amWT);
ThisPeriodHumidity = real(Today9amHumidity)

NextPeriodWindS = real(TodayMiddayWindS);
NextPeriodWindD = ConvertWindDToReal(TodayMiddayWindD);
NextPeriodTemp = real(TodayMiddayTemp);
NextPeriodWT = real(TodayMiddayWT);
NextPeriodHumidity = real(TodayMiddayHumidity)
break;

case 10:
ThisPeriodWindS = real(Today9amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today9amWindD);
ThisPeriodTemp = real(Today9amTemp);
ThisPeriodWT = real(Today9amWT);
ThisPeriodHumidity = real(Today9amHumidity)

NextPeriodWindS = real(TodayMiddayWindS);
NextPeriodWindD = ConvertWindDToReal(TodayMiddayWindD);
NextPeriodTemp = real(TodayMiddayTemp);
NextPeriodWT = real(TodayMiddayWT);
NextPeriodHumidity = real(TodayMiddayHumidity)
break;

case 11:
ThisPeriodWindS = real(Today9amWindS);
ThisPeriodWindD = ConvertWindDToReal(Today9amWindD);
ThisPeriodTemp = real(Today9amTemp);
ThisPeriodWT = real(Today9amWT);
ThisPeriodHumidity = real(Today9amHumidity)

NextPeriodWindS = real(TodayMiddayWindS);
NextPeriodWindD = ConvertWindDToReal(TodayMiddayWindD);
NextPeriodTemp = real(TodayMiddayTemp);
NextPeriodWT = real(TodayMiddayWT);
NextPeriodHumidity = real(TodayMiddayHumidity)
break;

case 12:
ThisPeriodWindS = real(TodayMiddayWindS);
ThisPeriodWindD = ConvertWindDToReal(TodayMiddayWindD);
ThisPeriodTemp = real(TodayMiddayTemp);
ThisPeriodWT = real(TodayMiddayWT);
ThisPeriodHumidity = real(TodayMiddayHumidity)

NextPeriodWindS = real(Today3pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today3pmWindD);
NextPeriodTemp = real(Today3pmTemp);
NextPeriodWT = real(Today3pmWT);
NextPeriodHumidity = real(Today3pmHumidity)
break;

case 13:
ThisPeriodWindS = real(TodayMiddayWindS);
ThisPeriodWindD = ConvertWindDToReal(TodayMiddayWindD);
ThisPeriodTemp = real(TodayMiddayTemp);
ThisPeriodWT = real(TodayMiddayWT);
ThisPeriodHumidity = real(TodayMiddayHumidity)

NextPeriodWindS = real(Today3pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today3pmWindD);
NextPeriodTemp = real(Today3pmTemp);
NextPeriodWT = real(Today3pmWT);
NextPeriodHumidity = real(Today3pmHumidity)
break;

case 14:
ThisPeriodWindS = real(TodayMiddayWindS);
ThisPeriodWindD = ConvertWindDToReal(TodayMiddayWindD);
ThisPeriodTemp = real(TodayMiddayTemp);
ThisPeriodWT = real(TodayMiddayWT);
ThisPeriodHumidity = real(TodayMiddayHumidity)

NextPeriodWindS = real(Today3pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today3pmWindD);
NextPeriodTemp = real(Today3pmTemp);
NextPeriodWT = real(Today3pmWT);
NextPeriodHumidity = real(Today3pmHumidity)
break;

case 15:
ThisPeriodWindS = real(Today3pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today3pmWindD);
ThisPeriodTemp = real(Today3pmTemp);
ThisPeriodWT = real(Today3pmWT);
ThisPeriodHumidity = real(Today3pmHumidity)

NextPeriodWindS = real(Today6pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today6pmWindD);
NextPeriodTemp = real(Today6pmTemp);
NextPeriodWT = real(Today6pmWT);
NextPeriodHumidity = real(Today6pmHumidity)
break;

case 16:
ThisPeriodWindS = real(Today3pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today3pmWindD);
ThisPeriodTemp = real(Today3pmTemp);
ThisPeriodWT = real(Today3pmWT);
ThisPeriodHumidity = real(Today3pmHumidity)

NextPeriodWindS = real(Today6pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today6pmWindD);
NextPeriodTemp = real(Today6pmTemp);
NextPeriodWT = real(Today6pmWT);
NextPeriodHumidity = real(Today6pmHumidity)
break;

case 17:
ThisPeriodWindS = real(Today3pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today3pmWindD);
ThisPeriodTemp = real(Today3pmTemp);
ThisPeriodWT = real(Today3pmWT);
ThisPeriodHumidity = real(Today3pmHumidity)

NextPeriodWindS = real(Today6pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today6pmWindD);
NextPeriodTemp = real(Today6pmTemp);
NextPeriodWT = real(Today6pmWT);
NextPeriodHumidity = real(Today6pmHumidity)
break;

case 18:
ThisPeriodWindS = real(Today6pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today6pmWindD);
ThisPeriodTemp = real(Today6pmTemp);
ThisPeriodWT = real(Today6pmWT);
ThisPeriodHumidity = real(Today6pmHumidity)

NextPeriodWindS = real(Today9pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today9pmWindD);
NextPeriodTemp = real(Today9pmTemp);
NextPeriodWT = real(Today9pmWT);
NextPeriodHumidity = real(Today9pmHumidity)
break;

case 19:
ThisPeriodWindS = real(Today6pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today6pmWindD);
ThisPeriodTemp = real(Today6pmTemp);
ThisPeriodWT = real(Today6pmWT);
ThisPeriodHumidity = real(Today6pmHumidity)

NextPeriodWindS = real(Today9pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today9pmWindD);
NextPeriodTemp = real(Today9pmTemp);
NextPeriodWT = real(Today9pmWT);
NextPeriodHumidity = real(Today9pmHumidity)
break;

case 20:
ThisPeriodWindS = real(Today6pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today6pmWindD);
ThisPeriodTemp = real(Today6pmTemp);
ThisPeriodWT = real(Today6pmWT);
ThisPeriodHumidity = real(Today6pmHumidity)

NextPeriodWindS = real(Today9pmWindS);
NextPeriodWindD = ConvertWindDToReal(Today9pmWindD);
NextPeriodTemp = real(Today9pmTemp);
NextPeriodWT = real(Today9pmWT);
NextPeriodHumidity = real(Today9pmHumidity)
break;

case 21:
ThisPeriodWindS = real(Today9pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today9pmWindD);
ThisPeriodTemp = real(Today9pmTemp);
ThisPeriodWT = real(Today9pmWT);
ThisPeriodHumidity = real(Today9pmHumidity)

NextPeriodWindS = real(TomorrowMidnightWindS);
NextPeriodWindD = ConvertWindDToReal(TomorrowMidnightWindD);
NextPeriodTemp = real(TomorrowMidnightTemp);
NextPeriodWT = real(TomorrowMidnightWT);
NextPeriodHumidity = real(TomorrowMidnightHumidity)
break;

case 22:
ThisPeriodWindS = real(Today9pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today9pmWindD);
ThisPeriodTemp = real(Today9pmTemp);
ThisPeriodWT = real(Today9pmWT);
ThisPeriodHumidity = real(Today9pmHumidity)

NextPeriodWindS = real(TomorrowMidnightWindS);
NextPeriodWindD = ConvertWindDToReal(TomorrowMidnightWindD);
NextPeriodTemp = real(TomorrowMidnightTemp);
NextPeriodWT = real(TomorrowMidnightWT);
NextPeriodHumidity = real(TomorrowMidnightHumidity)
break;

case 23:
ThisPeriodWindS = real(Today9pmWindS);
ThisPeriodWindD = ConvertWindDToReal(Today9pmWindD);
ThisPeriodTemp = real(Today9pmTemp);
ThisPeriodWT = real(Today9pmWT);
ThisPeriodHumidity = real(Today9pmHumidity)

NextPeriodWindS = real(TomorrowMidnightWindS);
NextPeriodWindD = ConvertWindDToReal(TomorrowMidnightWindD);
NextPeriodTemp = real(TomorrowMidnightTemp);
NextPeriodWT = real(TomorrowMidnightWT);
NextPeriodHumidity = real(TomorrowMidnightHumidity)
break;

default:
break;
}


if current_hour = 0 or current_hour = 3 or current_hour = 6 or current_hour = 9 or current_hour = 12 
or current_hour = 15 or current_hour = 18 or current_hour = 21 {

CurrentTemp = ThisPeriodTemp
CurrentWindS = ThisPeriodWindS
CurrentWindD = ThisPeriodWindD
CurrentWTMod = 0
CurrentHumidity = ThisPeriodHumidity
}

//Working out the sounds for this period.
switch ThisPeriodWT {
case 0:
case 1:
case 2:
case 3:
case 5:
case 6:
case 7:
case 8:
case 22:
case 23:
case 24:
case 25:
case 26:
case 27:
CurrentWeatherSound = "none"
break;

case 9:
case 10:
case 11:
case 12:
CurrentWeatherSound = "lightrain"
break;

case 13:
case 14:
case 15:
case 16:
case 17:
case 18:
case 28:
case 29:
case 30:
CurrentWeatherSound = "heavyrain"
break;

case 19:
case 20:
case 21:
CurrentWeatherSound = "hail"
break;

default:
CurrentWeatherSound = "none"
break;
}

switch NextPeriodWT {
case 0:
case 1:
case 2:
case 3:
case 5:
case 6:
case 7:
case 8:
case 22:
case 23:
case 24:
case 25:
case 26:
case 27:
NextWeatherSound = "none"
break;

case 9:
case 10:
case 11:
case 12:
NextWeatherSound = "lightrain"
break;

case 13:
case 14:
case 15:
case 16:
case 17:
case 18:
case 28:
case 29:
case 30:
NextWeatherSound = "heavyrain"
break;

case 19:
case 20:
case 21:
NextWeatherSound = "hail"
break;

default:
NextWeatherSound = "none"
break;
}












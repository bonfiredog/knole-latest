//GetSunMoonData

//Pull in data from the server.

SunMoonFile = file_text_open_read("latest sunmoon results.txt")
TodaySunrise = file_text_read_string(SunMoonFile)
file_text_readln(SunMoonFile)
TodaySunset = file_text_read_string(SunMoonFile)
file_text_readln(SunMoonFile)
file_text_readln(SunMoonFile)
TonightMoonPhase = file_text_read_string(SunMoonFile)
file_text_close(SunMoonFile)

switch TonightMoonPhase {
case "Full Moon":
MoonLustMod = 5
break;
case "Waxing Gibbous":
MoonLustMod = 25
break;
case "First Quarter":
MoonLustMod = 55
break;
case "Waxing Crescent":
MoonLustMod = 85
break;
case "New Moon":
MoonLustMod = 100
break;
case "Waning Crescent":
MoonLustMod = 85
break;
case "Third Quarter":
MoonLustMod = 55
break;
case "Waning Gibbous":
MoonLustMod = 25
break;
}

TodaySunriseHour = real(string_char_at(TodaySunrise,1))
TempSunriseMinuteVar = string_char_at(TodaySunrise,3) + string_char_at(TodaySunrise,4)
TodaySunriseMinute = real(TempSunriseMinuteVar)

TempSunsetVar = real(string_char_at(TodaySunset,1))
TodaySunsetHour = ConvertTo24Hour(TempSunsetVar)
TempSunsetMinuteVar = string_char_at(TodaySunset,3) + string_char_at(TodaySunset,4)
TodaySunsetMinute = real(TempSunsetMinuteVar)

TodayLength = TodaySunsetMinute + (60 - TodaySunriseMinute) + ((TodaySunsetHour - TodaySunriseHour - 1) * 60) + 60 //This last 60 minutes is for twilight. The -1 is to make sure that the sunset and sunrise hours are not included in the calculation.
TodaySunshineLength = TodayLength - 60

//Working out morning twilight

if TodaySunriseMinute < 30 {
ThisMorningTwilightStartHour = TodaySunriseHour - 1
TempTotal = 30 - TodaySunriseMinute
ThisMorningTwilightStartMinute = TodaySunriseMinute + (60 - TempTotal)
} else if TodaySunriseMinute >= 30 {
ThisMorningTwilightStartHour = TodaySunriseHour
ThisMorningTwilightStartMinute = TodaySunriseMinute - 30
}

ThisMorningTwilightEndHour = TodaySunriseHour
ThisMorningTwilightEndMinute = TodaySunriseMinute

//Working out evening twilight

ThisEveningTwilightStartHour = TodaySunsetHour
ThisEveningTwilightStartMinute = TodaySunsetMinute

if TodaySunsetMinute >= 30 {
ThisEveningTwilightEndHour = TodaySunsetHour + 1
TempTotal = 60 - TodaySunsetMinute
ThisEveningTwilightEndMinute = (30 - TempTotal)
} else if TodaySunsetMinute < 30 {
ThisEveningTwilightEndHour = TodaySunsetHour
ThisEveningTwilightEndMinute = TodaySunsetMinute + 30
}

TWMornStartMinString = AddZeroToTwilight(ThisMorningTwilightStartMinute)
TWMornEndMinString = AddZeroToTwilight(ThisMorningTwilightEndMinute)
TWEveStartMinString = AddZeroToTwilight(ThisEveningTwilightStartMinute)
TWEveEndMinString = AddZeroToTwilight(ThisEveningTwilightEndMinute)

file_delete("new sunmoon result.txt")

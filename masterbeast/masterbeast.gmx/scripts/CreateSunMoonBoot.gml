///CreateSunMoonBoot

//Create the sun or moon object, depending on the current hour.

//Create Sun

if (current_hour = ThisMorningTwilightStartHour and current_minute >= ThisMorningTwilightStartMinute)
or
(current_hour > ThisMorningTwilightStartHour and current_hour < ThisEveningTwilightEndHour)
or
(current_hour = ThisEveningTwilightEndHour and current_minute <= ThisEveningTwilightEndMinute)
{
TodaysSun = instance_create(x,y,mSun)
TodaySunCreated = true
StartWithSun = true

}

//Create Moon

if 
(current_hour = ThisEveningTwilightStartHour and current_minute >= ThisEveningTwilightStartMinute)
or
(current_hour > ThisEveningTwilightStartHour and current_hour <= 23)
or 
(current_hour >= 0 and current_hour < ThisMorningTwilightEndHour)
or
(current_hour = ThisMorningTwilightEndHour and current_minute <= ThisMorningTwilightEndMinute)
{
TonightsMoon = instance_create(x,y,mMoon)
TodayMoonCreated = true
StartWithMoon = true
}


//Alerting For Twilight

SetTwilightPhaseAtBoot()

if StartWithSun = true {

//Work out the current sun minute, no matter where we are in the day.
CurrentSunMinute = ((current_hour - ThisMorningTwilightStartHour - 1) * 60) + current_minute + (60 - ThisMorningTwilightStartMinute)

//Setting the sun's initial position, colour, intensity, range, shadow intensity and power
//based on the current time.

//If in morning twilight (1st Half)
if MorningTwilightInProgress = true and CurrentTwilightMinute <= 15 {

with TodaysSun {

if MorningTwilightStartR < MorningTwilightMiddleR {
CurrentR = MorningTwilightStartR + ((abs(MorningTwilightMiddleR - MorningTwilightStartR) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightStartR > MorningTwilightMiddleR {
CurrentR = MorningTwilightStartR - ((abs(MorningTwilightMiddleR - MorningTwilightStartR) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightStartR = MorningTwilightMiddleR {
CurrentR = MorningTwilightStartR
}

if MorningTwilightStartG < MorningTwilightMiddleG {
CurrentG = MorningTwilightStartG + ((abs(MorningTwilightMiddleG - MorningTwilightStartG) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightStartG > MorningTwilightMiddleG {
CurrentG = MorningTwilightStartG - ((abs(MorningTwilightMiddleG - MorningTwilightStartG) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightStartG = MorningTwilightMiddleG {
CurrentG = MorningTwilightStartG
}


if MorningTwilightStartB < MorningTwilightMiddleB {
CurrentB = MorningTwilightStartB + ((abs(MorningTwilightMiddleB - MorningTwilightStartB) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightStartR > MorningTwilightMiddleB {
CurrentB = MorningTwilightStartB - ((abs(MorningTwilightMiddleB - MorningTwilightStartB) / 15) * mWorldController.CurrentTwilightMinute)
}  else if MorningTwilightStartB = MorningTwilightMiddleB {
CurrentB = MorningTwilightStartB
}


x = MorningTwilightX
y = MorningTwilightY

CurrentDirection = RiseDirection - 0
DirectionModifier = 0

CurrentSunAlpha = MorningTwilightStartAlpha - ((abs(MorningTwilightStartAlpha - MorningTwilightEndAlpha) / 30) * CurrentTwilightMinute)

}

//If in morning twilight (2nd Half)
} else if MorningTwilightInProgress = true and CurrentTwilightMinute > 15 {

with TodaysSun {

if MorningTwilightMiddleR < MorningTwilightEndR {
CurrentR = MorningTwilightMiddleR + ((abs(MorningTwilightMiddleR - MorningTwilightEndR) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightMiddleR > MorningTwilightEndR {
CurrentR = MorningTwilightMiddleR - ((abs(MorningTwilightMiddleR - MorningTwilightEndR) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightMiddleR = MorningTwilightEndR {
CurrentR = MorningTwilightMiddleR
}


if MorningTwilightMiddleG < MorningTwilightEndG {
CurrentG = MorningTwilightMiddleG + ((abs(MorningTwilightMiddleG - MorningTwilightEndG) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightMiddleG > MorningTwilightEndG {
CurrentG = MorningTwilightMiddleG - ((abs(MorningTwilightMiddleG - MorningTwilightEndG) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightMiddleG = MorningTwilightEndG {
CurrentG = MorningTwilightMiddleG
}

if MorningTwilightMiddleB < MorningTwilightEndB {
CurrentB = MorningTwilightMiddleB + ((abs(MorningTwilightMiddleB - MorningTwilightEndB) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightMiddleB > MorningTwilightEndB {
CurrentB = MorningTwilightMiddleB - ((abs(MorningTwilightEndB - MorningTwilightMiddleB) / 15) * mWorldController.CurrentTwilightMinute)
} else if MorningTwilightMiddleB = MorningTwilightEndB {
CurrentB = MorningTwilightMiddleB
}

x = MorningTwilightX
y = MorningTwilightY

CurrentDirection = RiseDirection - 0
DirectionModifier = 0

CurrentSunAlpha = MorningTwilightMiddleAlpha - ((abs(MorningTwilightEndAlpha - MorningTwilightEndAlpha) / 30) * CurrentTwilightMinute)

}

//If in evening twilight (1st Half)
} else if EveningTwilightInProgress = true and CurrentTwilightMinute <= 15 {

with TodaysSun {

if EveningTwilightStartR < EveningTwilightMiddleR {
CurrentR = EveningTwilightStartR + ((abs(EveningTwilightMiddleR - EveningTwilightStartR) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightStartR > EveningTwilightMiddleR {
CurrentR = EveningTwilightStartR - ((abs(EveningTwilightMiddleR - EveningTwilightStartR) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightStartR = EveningTwilightMiddleR {
CurrentR = MorningTwilightMiddleR
}

if EveningTwilightStartG < EveningTwilightMiddleG {
CurrentG = EveningTwilightStartG + ((abs(EveningTwilightMiddleG - EveningTwilightStartG) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightStartG > EveningTwilightMiddleG {
CurrentG = EveningTwilightStartG - ((abs(EveningTwilightMiddleG - EveningTwilightStartG) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightStartG = EveningTwilightMiddleG {
CurrentG = MorningTwilightMiddleG
}

if EveningTwilightStartB < EveningTwilightMiddleB {
CurrentB = EveningTwilightStartB + ((abs(EveningTwilightMiddleB - EveningTwilightStartB) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightStartR > EveningTwilightMiddleB {
CurrentB = EveningTwilightStartB - ((abs(EveningTwilightMiddleB - EveningTwilightStartB) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightStartB = EveningTwilightMiddleB {
CurrentB = MorningTwilightMiddleB
}

x = EveningTwilightX
y = EveningTwilightY

CurrentDirection = RiseDirection - 180
DirectionModifier = 180

CurrentSunAlpha = EveningTwilightStartAlpha + ((abs(EveningTwilightEndAlpha - EveningTwilightStartAlpha) / 30) * mWorldController.CurrentTwilightMinute)

}

//If in evening twilight (2nd Half)

} else if EveningTwilightInProgress = true and CurrentTwilightMinute > 15 {

with TodaysSun {

if EveningTwilightMiddleR < EveningTwilightEndR {
CurrentR = EveningTwilightMiddleR + ((abs(EveningTwilightMiddleR - EveningTwilightEndR) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightMiddleR > EveningTwilightEndR {
CurrentR = EveningTwilightMiddleR - ((abs(EveningTwilightMiddleR - EveningTwilightEndR) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightMiddleR = EveningTwilightEndR {
CurrentR = MorningTwilightMiddleR
}

if EveningTwilightMiddleG < EveningTwilightEndG {
CurrentG = EveningTwilightMiddleG + ((abs(EveningTwilightMiddleG - EveningTwilightEndG) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightMiddleG > EveningTwilightEndG {
CurrentG = EveningTwilightMiddleG - ((abs(EveningTwilightMiddleG - EveningTwilightEndG) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightMiddleG = EveningTwilightEndG {
CurrentG = MorningTwilightMiddleG
}

if EveningTwilightMiddleB < EveningTwilightEndB {
CurrentB = EveningTwilightMiddleB + ((abs(EveningTwilightMiddleB - EveningTwilightEndB) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightMiddleB > EveningTwilightEndB {
CurrentB = EveningTwilightMiddleB - ((abs(EveningTwilightEndB - EveningTwilightMiddleB) / 15) * mWorldController.CurrentTwilightMinute)
} else if EveningTwilightMiddleB = EveningTwilightEndB {
CurrentB = MorningTwilightMiddleB
}

x = EveningTwilightX
y = EveningTwilightY

CurrentDirection = RiseDirection - 180
DirectionModifier = 180

CurrentSunAlpha = EveningTwilightStartAlpha + ((abs(EveningTwilightEndAlpha - EveningTwilightStartAlpha) / 30) * mWorldController.CurrentTwilightMinute)

}

//If at sunrise
} else if (current_hour = TodaySunriseHour and current_minute = TodaySunriseMinute) {

with TodaysSun {

CurrentR = DawnR
CurrentG = DawnG
CurrentB = DawnB

CurrentSunAlpha = DawnAlpha

x = DawnX
y = DawnY

CurrentDirection = RiseDirection - 0
DirectionModifier = 0

}


//If at sunset
} else if (current_hour = TodaySunsetHour and current_minute = TodaySunsetMinute) {

with TodaysSun {

CurrentR = SunsetR
CurrentG = SunsetG
CurrentB = SunsetB

x = SunsetX
y = SunsetY

CurrentDirection = RiseDirection - 180
DirectionModifier = 180

CurrentSunAlpha = SunsetAlpha
}

//All other times of day in between
} else {

//Before Midday
if CurrentSunMinute < (TodayLength / 2) {

with TodaysSun {


if DawnR < MiddayR {
CurrentR = DawnR + ((abs(MiddayR - DawnR) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - 30))
} else if DawnR > MiddayR {
CurrentR = DawnR - ((abs(DawnR - MiddayR) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - 30))
} else if DawnR = MiddayR {
CurrentR = MiddayR
}

if DawnG < MiddayG {
CurrentG = DawnG + ((abs(MiddayG - DawnG) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - 30))
} else if DawnG > MiddayG {
CurrentG = DawnG - ((abs(DawnG - MiddayG) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - 30))
} else if DawnG = MiddayG {
CurrentG = MiddayG
}

if DawnB < MiddayB {
CurrentB = DawnB + ((abs(MiddayB - DawnB) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - 30))
} else if DawnB > MiddayB {
CurrentB = DawnB - ((abs(DawnB - MiddayB) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - 30))
} else if DawnB = MiddayB {
CurrentB = MiddayB
}

x = mCentreOfRoom.x + lengthdir_x(DistanceFromCentreOfRoom,(RiseDirection - ((180 / mWorldController.TodaySunshineLength) * (mWorldController.CurrentSunMinute - 30)))) 
y = mCentreOfRoom.y + lengthdir_y(DistanceFromCentreOfRoom,(RiseDirection - ((180 / mWorldController.TodaySunshineLength) * (mWorldController.CurrentSunMinute - 30))))

CurrentDirectionTemp = ((180 / mWorldController.TodaySunshineLength) * (mWorldController.CurrentSunMinute - 30))
CurrentDirection = RiseDirection - CurrentDirectionTemp
DirectionModifier = CurrentDirectionTemp

if mWorldController.CurrentSunMinute <= 70 {
CurrentSunAlpha = DawnAlpha - (abs(MiddayAlpha - DawnAlpha) / 40)
} else {
CurrentSunAlpha = MiddayAlpha
}

}

//At Midday
} else if CurrentSunMinute = (TodayLength / 2) {

with TodaysSun {
CurrentR = MiddayR
CurrentG = MiddayG
CurrentB = MiddayB

x = MiddayX
y = MiddayY

CurrentDirection = RiseDirection - 90

CurrentAlpha = MiddayAlpha
}

//After Midday
} else if CurrentSunMinute > (TodayLength / 2) {

with TodaysSun {

if MiddayR < SunsetR {
CurrentR = MiddayR + ((abs(SunsetR - MiddayR) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - (mWorldController.TodaySunshineLength / 2)))
} else if MiddayR > SunsetR {
CurrentR = MiddayR - ((abs(MiddayR - SunsetR) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - (mWorldController.TodaySunshineLength / 2)))
} else if MiddayR = SunsetR {
CurrentR = SunsetR
} else if MiddayR = SunsetR {
CurrentR = MiddayR
}

if MiddayG < SunsetG {
CurrentG = MiddayG + ((abs(SunsetG - MiddayG) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - (mWorldController.TodaySunshineLength / 2)))
} else if MiddayG > SunsetG {
CurrentG = MiddayG - ((abs(MiddayG - SunsetG) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - (mWorldController.TodaySunshineLength / 2)))
} else if MiddayG = SunsetG {
CurrentG = MiddayG
}

if MiddayB < SunsetB {
CurrentB = MiddayB + ((abs(SunsetB - MiddayB) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - (mWorldController.TodaySunshineLength / 2)))
} else if MiddayB > SunsetB {
CurrentB = MiddayB - ((abs(MiddayB - SunsetB) / (mWorldController.TodaySunshineLength / 2)) * (mWorldController.CurrentSunMinute - (mWorldController.TodaySunshineLength / 2)))
} else if MiddayB = SunsetB {
CurrentB = MiddayB
}

x = mCentreOfRoom.x + lengthdir_x(DistanceFromCentreOfRoom,(RiseDirection - ((180 / mWorldController.TodaySunshineLength) * (mWorldController.CurrentSunMinute - 30)))) 
y = mCentreOfRoom.y + lengthdir_y(DistanceFromCentreOfRoom,(RiseDirection - ((180 / mWorldController.TodaySunshineLength) * (mWorldController.CurrentSunMinute - 30))))


CurrentDirectionTemp = ((180 / mWorldController.TodaySunshineLength) * (mWorldController.CurrentSunMinute - 30))
CurrentDirection = RiseDirection - CurrentDirectionTemp
DirectionModifier = CurrentDirectionTemp

if mWorldController.CurrentSunMinute > (mWorldController.TodayLength - 90) {
CurrentSunAlpha = MiddayAlpha + abs(SunsetAlpha - MiddayAlpha) / 60
} else {
CurrentSunAlpha = MiddayAlpha
}

}
}

}

//Set the moon's initial (random) position, and its power, range and intensity, based on
//its current phase and the current time.

}


if StartWithMoon = true {
with TonightsMoon {
CurrentDirection = random_range(60,120)
Direction = CurrentDirection
x = mCentreOfRoom.x + lengthdir_x(DistanceFromCentreOfRoom,Direction)
y = mCentreOfRoom.y + lengthdir_y(DistanceFromCentreOfRoom,Direction)
SetMoonPowerAndIntensity()
instance_create(x,y,mMoonVisible)
}

}




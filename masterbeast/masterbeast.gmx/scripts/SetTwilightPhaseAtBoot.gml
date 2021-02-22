///SetTwilightPhaseAtBoot

//Morning?

//Start and End Same Hour
if 
((current_hour = ThisMorningTwilightStartHour and current_hour = ThisMorningTwilightEndHour)
and
(current_minute >= ThisMorningTwilightStartMinute and current_minute <= ThisMorningTwilightEndMinute))
{
MorningTwilightInProgress = true
if current_second < 59 {
CurrentTwilightMinute = current_minute - ThisMorningTwilightStartMinute - 1
if CurrentTwilightMinute < 0 {
CurrentTwilightMinute = 0
} 
} else if current_second = 59 {
CurrentTwilightMinute = current_minute - ThisMorningTwilightStartMinute
TriggeredTwilightMinute = true
}
}

//Start and End Different Hours

//Before Hour Change
else if ((current_hour >= ThisMorningTwilightStartHour and current_hour < ThisMorningTwilightEndHour) and current_minute >= ThisMorningTwilightStartMinute)
{
MorningTwilightInProgress = true
if current_second < 59 {
CurrentTwilightMinute = current_minute - ThisMorningTwilightStartMinute - 1
if CurrentTwilightMinute < 0 {
CurrentTwilightMinute = 0
}
} else if current_second = 59 {
CurrentTwilightMinute = current_minute - ThisMorningTwilightStartMinute
TriggeredTwilightMinute = true
}
} 
//After Hour Change
else if ((current_hour > ThisMorningTwilightStartHour and current_hour <= ThisMorningTwilightEndHour) and current_minute <= ThisMorningTwilightEndMinute)
{
MorningTwilightInProgress = true
if current_second < 59 {
CurrentTwilightMinute = (60 - ThisMorningTwilightStartMinute) + current_minute - 1
} else if current_second = 59 {
CurrentTwilightMinute = (60 - ThisMorningTwilightStartMinute) + current_minute
TriggeredTwilightMinute = true
}
}

//-------------------------------------------------------------------------

//Evening?


//Start and End Same Hour
if 
((current_hour = ThisEveningTwilightStartHour and current_hour = ThisEveningTwilightEndHour)
and
(current_minute >= ThisEveningTwilightStartMinute and current_minute <= ThisEveningTwilightEndMinute))
{
EveningTwilightInProgress = true
if current_second < 59 {
CurrentTwilightMinute = current_minute - ThisEveningTwilightStartMinute - 1
if CurrentTwilightMinute < 0 {
CurrentTwilightMinute = 0
} 
} else if current_second = 59 {
CurrentTwilightMinute = current_minute - ThisEveningTwilightStartMinute
TriggeredTwilightMinute = true
}
}

//Start and End Different Hours

//Before Hour Change
else if ((current_hour >= ThisEveningTwilightStartHour and current_hour < ThisEveningTwilightEndHour) and current_minute >= ThisEveningTwilightStartMinute)
{
EveningTwilightInProgress = true
if current_second < 59 {
CurrentTwilightMinute = current_minute - ThisEveningTwilightStartMinute - 1
if CurrentTwilightMinute < 0 {
CurrentTwilightMinute = 0
}
} else if current_second = 59 {
CurrentTwilightMinute = current_minute - ThisEveningTwilightStartMinute
TriggeredTwilightMinute = true
}
} 
//After Hour Change
else if ((current_hour > ThisEveningTwilightStartHour and current_hour <= ThisEveningTwilightEndHour) and current_minute <= ThisEveningTwilightEndMinute)
{
EveningTwilightInProgress = true
if current_second < 59 {
CurrentTwilightMinute = (60 - ThisEveningTwilightStartMinute) + current_minute - 1
} else if current_second = 59 {
CurrentTwilightMinute = (60 - ThisEveningTwilightStartMinute) + current_minute
TriggeredTwilightMinute = true
}
}

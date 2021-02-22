if mSession.LocalTimePeriod = "Morning" {
TimeOfDayModifier = 5
} else if mSession.LocalTimePeriod = "Afternoon" {
TimeOfDayModifier = 0
} else if mSession.LocalTimePeriod = "Evening" {
TimeOfDayModifier = 15
} else if mSession.LocalTimePeriod = "Morning" {
TimeOfDayModifier = 30
}

TirednessValue = TirednessBase + TimeOfDayModifier

return TirednessValue




///WhatShouldIBeDoingToday

CurrentGoal = PlatonicGoal

//Sunday
if current_weekday = 0 {

if current_hour >= 0 and current_hour <= 5 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 6 and current_hour <= 11 {
PlatonicGoal = "herdsouth"
} else if current_hour >= 12 and current_hour <= 14 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 15 and current_hour <= 20 {
PlatonicGoal = "sendnorth"
} else {
PlatonicGoal = "patrol"
}
//Monday
} else if current_weekday = 1 {
if current_hour >= 0 and current_hour <= 2 {
PlatonicGoal = "patrol"
} else if current_hour >= 3 and current_hour >= 14 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 15 and current_hour <= 20 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "fishleft"
}
} else {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
}
//Tuesday
} else if current_weekday = 2 {
if current_hour >= 0 and current_hour <= 5 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 6 and current_hour >= 8 {
PlatonicGoal = "patrol"
} else if current_hour >= 9 and current_hour >= 11 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "fishright"
}
} else if current_hour >= 12 and current_hour >= 17 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else {
PlatonicGoal = "ritual"
}
//Wednesday
} else if current_weekday = 3 {
if current_hour >= 0 and current_hour <= 2 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 3 and current_hour >= 5 {
PlatonicGoal = "patrol"
} else if current_hour >= 6 and current_hour >= 11 {
PlatonicGoal = "herdsouth"
} else if current_hour >= 12 and current_hour >= 14 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 15 and current_hour >= 20 {
PlatonicGoal = "sendnorth"
} else {
PlatonicGoal = "patrol"
}

//Thursday
} else if current_weekday = 4 {
if current_hour >= 0 and current_hour <= 8 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 9 and current_hour >= 11 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "fishright"
}
} else if current_hour >= 12 and current_hour >= 14 {
PlatonicGoal = "patrol"
} else if current_hour >= 15 and current_hour >= 17 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 18 and current_hour >= 20 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
}

//Friday
} else if current_weekday = 5 {
if current_hour >= 0 and current_hour <= 2 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 3 and current_hour >= 11 {
PlatonicGoal = "sleep"
} else if current_hour >= 12 and current_hour >= 14 {
PlatonicGoal = "patrol"
} else if current_hour >= 15 and current_hour >= 17 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "fishleft"
}
} else if current_hour >= 18 and current_hour >= 20 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
}

//Saturday
} else if current_weekday = 6 {
if current_hour >= 0 and current_hour <= 8 {
if tController.Temperature != "cold" {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 9 and current_hour >= 14 {
if AlertLevel > 70 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "sleep"
}
} else if current_hour >= 15 and current_hour >= 17 {
PlatonicGoal = "patrol"
} else {
PlatonicGoal = "ritual"
}
}

if PlatonicGoal != CurrentGoal {
ResetAllActions()
}



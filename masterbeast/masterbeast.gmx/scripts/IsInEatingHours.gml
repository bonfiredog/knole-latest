///IsInEatingHours(weekday,partway?)

if argument0 = 2 {
if argument1 = true {
if current_hour >= 12 and current_hour < 13 and current_minute > 30 {
return true 
} else {
return false
}
} else {
if current_hour >= 12 and current_hour < 13 {
return true 
} else {
return false
}
}
}

if argument0 = 3 {
if argument1 = true {
if current_hour >= 8 and current_hour < 9 and current_minute > 30{
return true 
} else {
return false
}
} else {
if current_hour >= 8 and current_hour < 9 {
return true 
} else {
return false
}
}
}

if argument0 = 4 {
if argument1 = true {
if current_hour >= 12 and current_hour < 13 and current_minute > 30 {
return true 
} else {
return false
}
} else {
if current_hour >= 12 and current_hour < 13 {
return true 
} else {
return false
}
}
}

if argument0 = 5 {
if argument1 = true {
if current_hour >= 16 and current_hour < 17 and current_minute > 30 {
return true 
} else {
return false
}
} else {
if current_hour >= 16 and current_hour < 17 {
return true 
} else {
return false
}
}
}

if argument0 = 6 {
return false
}

if argument0 = 0 {
if argument1 = true {
if current_hour >= 18 and current_hour < 19 and current_minute > 30 {
return true 
} else {
return false
}
} else {
if current_hour >= 18 and current_hour < 19 {
return true 
} else {
return false
}
}
}

if argument0 = 1 {
if argument1 = true {
if current_hour >= 10 and current_hour < 11 and current_minute > 30 {
return true 
} else {
return false
}
} else {
if current_hour >= 10 and current_hour < 11 {
return true 
} else {
return false
}
}
}




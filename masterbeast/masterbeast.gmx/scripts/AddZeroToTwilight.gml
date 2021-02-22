///AddZeroToTwilight(Value)

Value = argument0
EndValue = "null"

if Value < 10 {
EndValue = "0" + string(Value)
} else {
EndValue = string(Value)
}

return EndValue


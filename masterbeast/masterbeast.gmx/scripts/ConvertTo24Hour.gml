///ConvertTo24Hour(hour)

Hour = argument0
Value = 0

switch Hour {
case 12:
Value = 12;
break;
case 1:
Value = 13;
break;
case 2:
Value = 14;
break;
case 3:
Value = 15;
break;
case 4:
Value = 16;
break;
case 5:
Value = 17;
break;
case 6:
Value = 18;
break;
case 7:
Value = 19;
break;
case 8:
Value = 20;
break;
case 9:
Value = 21;
break;
case 10:
Value = 22;
break;
case 11:
Value = 23;
break;
}

return Value

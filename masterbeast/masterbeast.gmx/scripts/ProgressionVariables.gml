///ProgressionVariables()

switch VocMode {
// --------- KEEP PROGRESSION LEVEL
case "same":
ChangeRate = irandom_range(0.0015,0.0035) + ((0.0002 / 100) * (VocIntensity * 100))
CurrentChangePoint = 0 + ((irandom_range(StepsOfSound / 3, StepsOfSound /2)))
CurrentChangeDir = choose("same","raise","lower")
break;
// --------- FALL OVER TIME
case "fall":
ChangeRate = irandom_range(0.005,0.008) + ((0.005 / 100) * (VocIntensity * 100))
break;
// --------- RISE OVER TIME
case "rise":
ChangeRate = irandom_range(0.005,0.008) + ((0.005 / 100) * (VocIntensity * 100))
break;
// --------- RISE THEN FALL
case "risefall":
ChangeRate = irandom_range(0.009,0.03) + ((0.008 / 100) * (VocIntensity * 100))
CurrentChangePoint = 0 + ((irandom_range(StepsOfSound / 3.2,StepsOfSound / 2.8)))
CurrentChangeDir = "rise"
ChangeNumber = 1 
break;
// --------- FALL THEN RISE
case "fallrise":
ChangeRate = irandom_range(0.009,0.03) + ((0.008 / 100) * (VocIntensity * 100))
CurrentChangePoint = 0 + ((irandom_range(StepsOfSound / 3.2,StepsOfSound / 2.8)))
CurrentChangeDir = "fall"
ChangeNumber = 1
break;
}

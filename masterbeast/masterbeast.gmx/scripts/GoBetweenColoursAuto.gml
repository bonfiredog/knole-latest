///GoBetweenColoursAuto(colour1r, colour1g, colour1b, colour2r, colour2g, colour2b, rate)

OriginalR = argument0
OriginalG = argument1
OriginalB = argument2

TargetR = argument3
TargetG = argument4
TargetB = argument5

RDiff = abs(argument0 - argument3)
GDiff = abs(argument1 - argument4)
BDiff = abs(argument2 - argument5)

Rate = argument6

//----------------------------

if CurrentR < TargetR {
CurrentR += (Rate)
} else if CurrentR > TargetR {
CurrentR -= (Rate)
}

if CurrentG < TargetG {
CurrentG += (Rate)
} else if CurrentG > TargetG {
CurrentG -= (Rate)
}

if CurrentB < TargetB {
CurrentB += (Rate)
} else if CurrentB > TargetB {
CurrentB -= (Rate)
}


CurrentColour = make_colour_rgb(CurrentR,CurrentG,CurrentB)

return CurrentColour

///tmc_lux_range_from_falloff(r,g,b,strength,falloff,max_range)
var c1 = argument0,
    c2 = argument1,
    c3 = argument2,
    Strength = argument3,
    FallOff = argument4,
    Range = argument5;


var ColStrength = max(c1,c2,c3);




var r = .5 * sqrt(1.0 + 4.0 * 2000.0 / (.2 * FallOff)) - .5;
var strngt = ColStrength*Strength;
r*=strngt;
return(min(r,Range));

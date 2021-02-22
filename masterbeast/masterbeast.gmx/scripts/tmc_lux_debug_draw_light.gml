///tmc_lux_debug_draw_light(x,y,z,color,strength,falloff,range);
var Pos = tmc_lux_vect3(argument0,argument1,argument2),
    Color = argument3,
    Strength = argument4,
    FallOff = argument5,
    Range = argument6;

var c1 = colour_get_red(Color)/255,
    c2 = colour_get_green(Color)/255,
    c3 = colour_get_blue(Color)/255;


var ColStrength = max(c1,c2,c3);




var r = .5 * sqrt(1.0 + 4.0 * 2000.0 / (.2 * FallOff)) - .5;
var strngt = ColStrength*Strength;

r*= strngt
r = min(Range,r)

draw_set_colour(c_white);
draw_circle(Pos[0],Pos[1],r,1);



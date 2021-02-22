///tmc_lux_light_color_to_array(color,power)
/*
    creates a light color + power array
    this is used for the m_Ambient variable for stuff drawing with shader. not for the lights themselves
*/
var arr;
arr[3] = argument1;
arr[2] = colour_get_blue(argument0)/255;
arr[1] = colour_get_green(argument0)/255;
arr[0] = colour_get_red(argument0)/255;
return arr;

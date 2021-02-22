///tmc_lux_change_light_color_array(color_array,color,power)
/*
    change a color array without creating a new one
    this is used for the m_Ambient variable for stuff drawing with shader. not for the lights themselves
*/
var arr = argument0;
arr[@3] = argument2;
arr[@2] = colour_get_blue(argument1/255);
arr[@1] = colour_get_green(argument1)/255;
arr[@0] = colour_get_red(argument1)/255;

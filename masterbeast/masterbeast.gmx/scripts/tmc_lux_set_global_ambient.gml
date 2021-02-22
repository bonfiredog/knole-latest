///tmc_lux_set_global_ambient(color,power)
/*
    sets the global variable that hold the global anbient color
*/
global.tmc_lux_GlobalAmbientColor[3] = argument1
global.tmc_lux_GlobalAmbientColor[2] = colour_get_blue(argument0)/255;
global.tmc_lux_GlobalAmbientColor[1] = colour_get_green(argument0)/255;
global.tmc_lux_GlobalAmbientColor[0] = colour_get_red(argument0)/255;

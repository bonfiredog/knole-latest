//tmc_lux_init_lights(num_lights)
//nuke the existing lights
//with(tmc_lux_a_light_obj) instance_destroy();
//set the max total to arg
global.tmc_lux_num_lights = argument0;
//reset the counter
global.tmc_lux_light_at = 0;
//the lists array, set after tmc_lux_init_lights() is called
global.tmc_lux_lights = 0;
//create the ligths instance array
for (i = 0; i< global.tmc_lux_num_lights; i++)
{
    global.tmc_lux_lights[i] = 0;
    global.tmc_lux_lights[i] = tmc_lux_light_struct();
//    global.tmc_lux_lights[i] = instance_create(0,0,tmc_lux_a_light_obj);    
}

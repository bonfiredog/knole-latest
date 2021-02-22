///tmc_lux_add_light(x,y,z,color,power,falloff,range, priority, shadow_casting)
/*
    adds a light at x,y,z with color and power.
    power is the intensity of the color
    falloff is the pseudo distance the light can travel, close to 0 is near indefinate, cannot be 0, 1 is very short distance, usually between 0 and 1 but can be more than 1
    range is an overlay on top of fall off to force a distance cap 
    priority tell how important the light is. 0 is highest priority and will never cut out the light unless it up with a list full of priority 0 lights
        1 is default. The priority internally is a distance modifier in the distance sort... so a light distance 1000 with have a sort distance of 10000 if the priority is 10
        making it less inportant than a light at disatnce 2000 with priority of 1.
    shadow_casting enables-disables the light's ability to cast shadows which can be useful for bullets and any other lights, epecialy numerous one that would cause
        a disturbing effect on the ground, a value of 0 is diabled. other > 0 is enabled, and serves as a multiplication factor for the shadow intensity cast by the light
         
    If you try to plant a light off screen and its range it not sufficient to be seen it wont be created
    
    Maping the 3d light position to the gm cartesian system:
        Imagine your objects and drawing are rendered in the room at x,y,z where in 2d z is always 0, 
         1) the x,y of the light matchs gm's coordinate system
         2) the z of the light is sort of mapped to the gm depth (in fact depth is 3d z really in the direct x level). so -1000 would put the light 1000 pixels above the sprite
            z of 1000 would put the light under sprite
            
    Function should be called in the step or end step or in the draw but before any light enabled rendered object
    
    will return true if the light was added
*/

if(global.tmc_lux_lights_on == 0) return 0
if(argument0+argument6<view_xview) return 0;
if(argument1+argument6<view_yview) return 0;
if(argument0-argument6>view_xview+view_wview) return 0;
if(argument1-argument6>view_yview+view_hview) return 0;
{
    if(global.tmc_lux_light_at<global.tmc_lux_num_lights)
    {
        var light = global.tmc_lux_lights[global.tmc_lux_light_at];
        global.tmc_lux_light_at++;
        light[@LIGHT.SHADOW_PROCESSED] = 0;
        light[@LIGHT.PROCESSED] = 0;
        light[@LIGHT.SHADOW_CASTING] = argument8;
        light[@LIGHT.PRIORITY] = argument7;
        
        light[@LIGHT.CONE_CO] = -2;
        light[@LIGHT.FZ]=1;
        light[@LIGHT.FY]=0;
        light[@LIGHT.FX]=0;
        light[@LIGHT.RANGE] = argument6;
        light[@LIGHT.FALLOFF] = argument5;
        light[@LIGHT.POWER] = argument4;
        light[@LIGHT.B] = colour_get_blue( argument3)/255;
        light[@LIGHT.G] = colour_get_green( argument3)/255;
        light[@LIGHT.R] = colour_get_red( argument3)/255;
        light[@LIGHT.Z] = argument2;
        light[@LIGHT.Y] = argument1;
        light[@LIGHT.X] = argument0;
        return 1;
    }
}
return 0;

///tmc_lux_add_light_cone(x,y,z,color,power,falloff,range,fx,fy,fz,cutoff,priority,shadow_casting)
/*
    adds a cone light at x,y,z with color and strenth.
    power is the intensity of the color
    falloff is the pseudo distance the light can travel, close to 0 is near indefinate, cannot be 0, 1 is very short distance, usually between 0 and 1 but can be more than 1
    range is an overlay on top of fall off to force a distance cap 
    fx,fy,fz is the facing vector. 0,1,0 is down
    cutoff is the angle cutoff of the cone. -2 is full sphere, like add_light. -2 to 0 is a dimpled circle to half a cicle, >0 but <1 a cone, .99 is a thin cone. 1 cannot be used
    priority tell how important the light is. 0 is highest priority and will never cut out the light unless it up with a list full of priority 0 lights
        1 is default. The priority internally is a distance modifier in the distance sort... so a light distance 1000 with have a sort distance of 10000 if the priority is 10
        making it less inportant than a light at disatnce 2000 with priority of 1.
    shadow_casting enables-disables the light's ability to cast shadows which can be useful for bullets and any other lights, epecialy numerous one that would cause
        a disturbing effect on the ground
           
    If you try to plant a light off screen and its range it not sufficient to be seen it wont be created

     Maping the 3d light position to the gm cartesian system:
         Imagine your objects and drawing are rendered in the room at x,y,z where in 2d z is always 0, 
         1) the x,y of the light matchs gm's coordinate system
         2) the z of the light is sort of mapped to the gm depth (in fact depth is 3d z really in the direct x level). so -1000 would put the light 1000 pixels above the sprite
            z of 1000 would put the light under sprite

    Mapping the cone facing orientation to the gm cartesian system:
        in Game Maker 
        x+=1 moves right, x-=1 moves left
        y+=1 moves down, y-=1 moves up
        depth+=1 places the object deeper in the draw layer (really z+=1)
        depth-=1 places the object higher in the draw layer (reall z-=1)
        
        the facing direction of fx =1 means look towards the right, -1 means look to the left. 
            fy=1 means looks down, -1 means loop up
            fz=1 means look bellow, fz -1 means look above
            the 3 values combine to make a 3d facing direction.
            1,1,0, will point down the lower right quadrand
            typically you can use cos(radangle), dcos(angle) and lengthdir_x(1,angle) to specify the fx orientation mapped to an angle
                      you can use sin(radangle), dsin(angle) and lengthdir_y(1,angle) to specify the fy orientation mapped to an angle
                      untill you star to involve fz... in any case the values are normalaled so 1,1,1 means lower right and below at -45 degrees
                      1,1,1000 if you dont want to figure out the exact math to calculate a facing normal..
            
            if your light is above at -100, then it needs to face down so fz should be 1 (well a positive value). if fz was -1 the projected 
                light would go to the sky so away from the drawing layer 0
            if your light is below at 100, then it needs to face up so fz should be -1. if fz was -1 the projected light would go down 
                so away from the drawing layer at z 0. having the light under the sprite is possible. since the light is projected as a cone or a sphere (-2)
                in 3d space then a light 10 pixels away but 5 pixels below would still cast something on the sprite depending on the normals.
            
            of course if you project a cone straight on down, the result will be a circle
            

                              
        
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
        light[@LIGHT.SHADOW_CASTING] = argument12;
        light[@LIGHT.PRIORITY] = argument11;
        light[@LIGHT.CONE_CO] = argument10;
        light[@LIGHT.FZ]=argument9;
        light[@LIGHT.FY]=argument8;
        light[@LIGHT.FX]=argument7;
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

///tmc_lux_add_sprited_light(sprite, subimg, x, y, z, xscale, yscale, rot, colour, alpha, radius, shadow_casting )
/*
    the sprited lights is a sub system I added to have lights in the shape of a sprite
    
    Evidently it became the most powerful feature
    It's probably the most efficient lighting method I stumbled uppon 
    But really it's a glorified bm_add with extra blending
    
    How it works:
    if you add lights of this type, the light is added to a post process array. 
    The system will create 2 extra surfaces the size of the app surface
    On one surface the app surface is cloned
    On another, all the lights in the array are drawn
    The 2 surface are combined in drawing back to the application surface to fake illumination
    
    This alone can take it's "initial" toll but this method can have limitless number of lights at the cost of 2 surface draw + n draw sprites
    
    Limitations:
        This is independent of the 3d lighting system
        *it is not Z aware
        it is not normals/specular/occlusion aware
        it affects everything drawn on the surface
    
    Perfect to use for bullet hell since this will not drain the system with an unsurmountable number of lights
    since the system does not really care how many lights are "ON" really. the cost is mainly setting up the double buffer surfaces
    
    Initial Cost
        2 swaps, 2 batches (Minimally) 1 swap 1 batch per bufffer surface used and drawn.
    Lights Cost
        0 to 1 swap per light sprite, if all the light sprites are in the current texture page, 0 swaps, else 1 swap every time a sprite has to be fetched from another tpage
        1 batch per tpage swap.
    
    if tmc_lux_is_sprited_lights_enabled() is false the system is disable
    if tmc_lux_is_sprited_lights_surface_enabled() is true the sprited lights are drawn on the application surface with the shader
    if tmc_lux_is_sprited_lights_surface_enabled() is false the lights are drawn on to application surface directly with bm_add
    if the application surface does not exist or is disabled the lights are rendered on the screen with bm_add
    
    *You can call the script at any time and the light batch will be processes by default at depth -100000000 by the light controller
    BUT you can call tmc_lux_add_sprited_lights_handler() to add handlers at multiple dephts. the sprites added in the step/end step events and the sprites added
    in the draw up to the depth of the first handler will be processed by the first handler. the sprites added (in the draw) by instrances above the handler 
    will be process by the next handler... finally the main controller will finish off the shob at -100000000
    
    This bypasses the Z position issue and allowed you to draw different litght at different altitudes.
    
    The more layer handlers you have the more drain on the game, 2 swaps, 2 batch minumun. all handlers ue the same surface buffers so there is no extrac gpu memory cost
    
    It is important to work with layers to provide a good fakery. in the demo the fluff is at -30, there is a handler at -29.99 and the ships move up/down on Z with the mouse wheel
    so sprite light bullets go under the fluff when below them.
    
    radius is the radius of the sprite (unscaled), it is used to deternine if outside the view and if something is under the light (since sprited lights are essentialy
    spot lights pointing down, their "range" is determined by the sprite radius
    the function will adjust the radius according to the scale, because a sprite can be rotated, it is assume the origines are centered 
    and so the radius should be the distance from center sprite to one of the corners
    
    shadow_casting enables-disables the light's ability to cast shadows which can be useful for bullets and any other lights, epecialy numerous one that would cause
        a disturbing effect on the ground, a value of 0 is diabled. other > 0 is enabled, and serves as a multiplication factor for the shadow intensity cast by the light

    
    Function can be called in the step or end step or in the draw but before any (or the desired) sprited lights handlers
    
*/
if(global.tmc_lux_sprited_lights_on == 0) exit;

var r = argument10 * max(abs(argument5),abs(argument6));
if(argument2+r<view_xview) return 0;
if(argument3+r<view_yview) return 0;
if(argument2-r>view_xview+view_wview) return 0;
if(argument3-r>view_yview+view_hview) return 0;


var sprited_light;
sprited_light[SPRITED_LIGHT.SHADOW_PROCESSED] = 0;
sprited_light[SPRITED_LIGHT.PROCESSED] = 0;
sprited_light[SPRITED_LIGHT.SHADOW_CASTING] = argument11;
sprited_light[SPRITED_LIGHT.RADIUS] = r;
sprited_light[SPRITED_LIGHT.ALPHA] = argument9;
sprited_light[SPRITED_LIGHT.COLOUR] = argument8;
sprited_light[SPRITED_LIGHT.ROT] = argument7;
sprited_light[SPRITED_LIGHT.YSCALE] = argument6;
sprited_light[SPRITED_LIGHT.XSCALE] = argument5;
sprited_light[SPRITED_LIGHT.Z] = argument4;
sprited_light[SPRITED_LIGHT.Y] = argument3;
sprited_light[SPRITED_LIGHT.X] = argument2;
sprited_light[SPRITED_LIGHT.INDEX] = argument1;
sprited_light[SPRITED_LIGHT.SPRITE] = argument0;

global.tmc_lux_sprited_lights[global.tmc_lux_sprited_lights_at] = sprited_light;
global.tmc_lux_sprited_lights_at++;



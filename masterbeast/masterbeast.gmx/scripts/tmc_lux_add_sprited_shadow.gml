///tmc_lux_add_sprited_shadow(sprite, subimg, x, y, z, xscale, yscale, rot, colour, alpha, radius )
/*
    
    same a args draw_srite_ext,
    radius is the radius of the sprite (unscaled), it is used to deternine if outside the view
    the function will adjust the radius according to the scale, because a sprite can be rotated, it is assume the origines are centered 
    and so the radius should be the distance from center sprite to one of the corners
    
    When enabled, this feature draws shadows at altitude (z) 0 using the x,y,z,ranges and radius of all the lights, sprited or not, coned or not
    
    this uses the back buffer of the sprited light system so that system must be ON and surface-enabled. 
    the shadow system will activate if any sprited lights or regular lights or coned lights are present and in range
    
    Function can be called in the step or end step or in the draw but before any (or the desired) sprited lights handlers

*/
if(global.tmc_lux_sprited_shadows_on == 0) exit;
var sprited_shadow;
sprited_shadow[SPRITED_SHADOWS.RADIUS] = argument10 * max(abs(argument5),abs(argument6));
sprited_shadow[SPRITED_SHADOWS.ALPHA] = argument9;
sprited_shadow[SPRITED_SHADOWS.COLOUR] = argument8;
sprited_shadow[SPRITED_SHADOWS.ROT] = argument7;
sprited_shadow[SPRITED_SHADOWS.YSCALE] = argument6;
sprited_shadow[SPRITED_SHADOWS.XSCALE] = argument5;
sprited_shadow[SPRITED_SHADOWS.Z] = argument4;
sprited_shadow[SPRITED_SHADOWS.Y] = argument3;
sprited_shadow[SPRITED_SHADOWS.X] = argument2;
sprited_shadow[SPRITED_SHADOWS.INDEX] = argument1;
sprited_shadow[SPRITED_SHADOWS.SPRITE] = argument0;

global.tmc_lux_sprited_shadows[global.tmc_lux_sprited_shadows_at] = sprited_shadow;
global.tmc_lux_sprited_shadows_at++;



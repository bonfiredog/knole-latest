//tmc_lux_init_sprited_lights()
global.tmc_lux_sprited_lights_at = 0;
global.tmc_lux_sprited_lights= 0;
global.tmc_lux_sprited_lights[0] = 0;
global.tmc_lux_back_buffer = -1;
global.tmc_lux_lights_buffer = -1;

enum SPRITED_LIGHT
{
    SPRITE,
    INDEX,
    X,
    Y,
    Z,
    XSCALE,
    YSCALE,
    ROT,
    COLOUR,
    ALPHA,
    RADIUS,
    SHADOW_CASTING,
    PROCESSED,
    SHADOW_PROCESSED,
    _LAST
    
}

///tmc_lux_light_struct()
//creates an array/structure for the light
var arr;

enum LIGHT
{
    X,
    Y,
    Z,
    R,
    G,
    B,
    POWER,
    FALLOFF,
    RANGE,
    FX,
    FY,
    FZ,
    CONE_CO,
    PRIORITY,
    SHADOW_CASTING,
    PROCESSED,
    SHADOW_PROCESSED,
    _LAST    
}
arr[LIGHT._LAST] = 0;

return arr;

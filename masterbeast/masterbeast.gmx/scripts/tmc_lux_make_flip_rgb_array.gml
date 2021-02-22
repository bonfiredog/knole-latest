///tmc_lux_make_flip_rgb_array(r,g,b)
/*
    creates a flip rgb array where r,g,b are the 3 flip values (0, no flip, 1 flip) for the color in the normal map texture
    For example, for the commonly inverted green map
    m_FlipRGB = tmc_lux_make_flip_rgb_array(0,1,0);
    
    you can also map the r,g to the image_xscale, image_yscale
    m_FlipRGB = tmc_lux_make_flip_rgb_array(image_xscale<0,image_yscale<0,0);
    as illustrated in tmc_lux_demo_ship_par end step
*/
var arr;
arr[2] = argument2;
arr[1] = argument1;
arr[0] = argument0;
return arr;

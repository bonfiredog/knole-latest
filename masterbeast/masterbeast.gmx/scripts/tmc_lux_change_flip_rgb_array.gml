///tmc_lux_change_flip_rgb_array(arr,r,g,b)
/*
    Modifies and existing flip rgb array where arr is the arrya and r,g,b are the 3 flip values (0, no flip, 1 flip) for the color in the normal map texture
    For example, for the commonly inverted green map
    //create
    m_FlipRGB = tmc_lux_make_flip_rgb_array(0,0,0);
    
    //end step
    tmc_lux_change_flip_rgb_array(m_FlipRGB,image_xscale<0,image_yscale<0,0)
    
    as illustrated in tmc_lux_demo_ship_par end step
*/
var arr = argument0;
arr[@2] = argument3;
arr[@1] = argument2;
arr[@0] = argument1;


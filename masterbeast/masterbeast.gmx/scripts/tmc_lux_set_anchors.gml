///tmc_lux_set_anchors(num_hcels, num_vcels,max_lights_per_cell)
/*
    defines what the anchor specs are. how many cells to split the view with and how many lights per cells
    reset anchors uses these globals
*/
//number of cells in the view by columns and rom
global.tmc_lux_hcels = argument0;
global.tmc_lux_vcels = argument1;

//maximum number of lights per cells WARNING. if you set to more than 20 you need to update the shaders (happy copy and paste)
global.max_ligths_per_cell = argument2;


global.tmc_lux_anchor_grid[global.tmc_lux_hcels,global.tmc_lux_hcels] = 0;
tmc_lux_reset_anchors();

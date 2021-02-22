///tmc_lux_get_anchor(x,y)
var gw = global.tmc_lux_hcels;
var gh = global.tmc_lux_vcels;
var xx = clamp(((argument0-view_xview)/view_wview)*gw,0,gw-1);
var yy = clamp(((argument1-view_yview)/view_hview)*gh,0,gh-1);
return global.tmc_lux_anchor_grid[@xx,yy];

//tmc_lux_reset_anchors();
//initialise the light anchor grid
tmc_lux_clear_anchors()
var width = view_wview/global.tmc_lux_hcels;
var height = view_hview/global.tmc_lux_vcels;
var r = point_distance(0,0,width,height);
var g = global.tmc_lux_anchor_grid;
//create a grid of anchors in the view
for(var xx = 0; xx<global.tmc_lux_hcels; xx+=1)
{
    for(var yy = 0; yy<global.tmc_lux_vcels ;yy+=1)
    {
        with(instance_create(xx*width+width/2,yy*height+height/2,tmc_lux_light_anchor_obj))
        {
            //set the anchor range to match the cell size
            range = r;
            g[@xx,yy] = id;
        }
    }
}

///tmc_lux_debug_draw_light_cone(x,y,z,color,strength,falloff,range,fx,fy,fz,cone_cutoff);
var Pos = tmc_lux_vect3(argument0,argument1,argument2),
    Color = argument3,
    Strength = argument4,
    FallOff = argument5,
    Range = argument6,
    Facing = tmc_lux_vect_norm(tmc_lux_vect3(argument7,argument8,argument9)),
    CutOff = argument10;

var c1 = colour_get_red(Color)/255,
    c2 = colour_get_green(Color)/255,
    c3 = colour_get_blue(Color)/255;

var colstrn2 = (c1+c2+c3)/3;
var ColStrength = max(c1,c2,c3);
var OffDist = tmc_lux_vect3(0,0,0);


var vx = 0,
    vy = 0,
    vz = 0;
var r = .5 * sqrt(1.0 + 4.0 * 2000.0 / (.2 * FallOff)) - .5;
var strngt = ColStrength*Strength;

r*= strngt
r = min(Range,r)

draw_set_colour(c_white);
draw_circle(Pos[0],Pos[1],r,1);
d3d_transform_set_identity();

var StubFacing = tmc_lux_vect3(0,0,1);

//d3d_transform_set_identity();


d3d_transform_add_rotation_y(-90);
d3d_transform_add_rotation_y(point_direction(0,0,point_distance(0,0,Facing[0],Facing[1]),Facing[2]));
d3d_transform_add_rotation_z(point_direction(0,0,Facing[0],Facing[1]));

var step = 10;
var vz = 1;
var avz = 1;
var ainc = 360/step;
var vz_step = 2/(step*4);
var a = get_timer()/10000;
d3d_transform_add_translation(Pos[0],Pos[1],Pos[2]);

var LastPoint = tmc_lux_vect3(0,0,0);
draw_circle(0,0,32,1);
d3d_primitive_begin(pr_linelist);
{
    while(vz>-1)
    {
        var first = true;
        repeat(step+1)
        {
            OffDist[@0] = lengthdir_x(1-avz,a);
            OffDist[@1] = lengthdir_y(1-avz,a);
            OffDist[@2] = vz;
            ConeDOT = (tmc_lux_vect_dot(StubFacing,OffDist) - CutOff)/(1.0-CutOff);
            ConeDOT = clamp(ConeDOT,0.0,1);
            if(ConeDOT>0)
            {
                tmc_lux_vect_norm_self(OffDist);
                tmc_lux_vect_multr_self(OffDist,r*min(1,ConeDOT*2));
                
                if(first == false)
                {
                    d3d_vertex_colour(0,0,0,Color,0);
                    d3d_vertex_colour(OffDist[0],OffDist[1],OffDist[2],Color, .6);
                    d3d_vertex_colour(LastPoint[0],LastPoint[1],LastPoint[2],Color, .6);
                    d3d_vertex_colour(OffDist[0],OffDist[1],OffDist[2],Color, .6);
                    
                    
                    //break;
                }
                LastPoint[@0] = OffDist[0];
                LastPoint[@1] = OffDist[1];
                LastPoint[@2] = OffDist[2];
                
                first = false;
                
            }
            a+=ainc;         
        }
        a+=ainc/step;
        vz-=vz_step;
        avz = abs(vz);
    }
    d3d_vertex_colour(0,0,0,c_lime,1);
    d3d_vertex_colour(0,0,r,c_lime, 1);
    
}
d3d_primitive_end();
var oa = draw_get_alpha();
var down = sign(tmc_lux_vect_dot(StubFacing,Facing))
draw_set_alpha(down *1);
draw_circle_colour(0,0,32,Color,Color,0==down);
draw_set_alpha(1);
draw_circle(0,0,32,1);
draw_set_alpha(oa);
d3d_transform_set_identity();


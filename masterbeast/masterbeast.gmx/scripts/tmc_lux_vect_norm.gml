///tmc_lux_vect_norm(vect)
//normalises a scalar to vector 
var v;
v[0] = argument0[0];
v[1] = argument0[1];
v[2] = argument0[2];
var t = sqrt(v[0]*v[0]+v[1]*v[1]+v[2]*v[2]);
if(t!=0)
{
    v[@0]/=t;
    v[@1]/=t;
    v[@2]/=t;
}
return v;


/// tmc_lux_vect3(x,y,z)
//creates a 3d vector
//usage
// v = vect3(10,10,10)
// num_components = v[0]; // == 3
// x = v[1];
// y = v[2];
// z = v[3];
var v;
//added extra data, reversed the set order and incudes the unused axis
v[2] = argument2;
v[1] = argument1;
v[0] = argument0;
return v;

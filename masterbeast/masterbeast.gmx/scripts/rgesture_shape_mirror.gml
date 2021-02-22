///rgesture_shape_mirror(id,replace?)

var temp;
if argument1 = 0
{
    temp = rgesture_shape_create(global.gesture_c[argument0],global.gesture_w[argument0],global.gesture_h[argument0])
}
else temp = argument0
for(i = 0; i < rgesture_point_number(argument0); i += 1)
{
    global.gesture_x[temp,i] *= -1
}
return temp

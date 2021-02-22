///rgesture_shape_rotate(id,replace?)

var temp;
if argument2 = 0
{
    temp = rgesture_shape_create(global.gesture_c[argument0],global.gesture_w[argument0],global.gesture_h[argument0])
}
else temp = argument0
for(i = 0; i < rgesture_point_number(argument0); i += 1)
{
    global.gesture_x[temp,i] = lengthdir_x(point_distance(0,0,global.gesture_x[temp,i],global.gesture_y[temp,i]),point_direction(0,0,global.gesture_x[temp,i],global.gesture_y[temp,i])+argument1)
    global.gesture_y[temp,i] = lengthdir_y(point_distance(0,0,global.gesture_x[temp,i],global.gesture_y[temp,i]),point_direction(0,0,global.gesture_x[temp,i],global.gesture_y[temp,i])+argument1)
}
return temp

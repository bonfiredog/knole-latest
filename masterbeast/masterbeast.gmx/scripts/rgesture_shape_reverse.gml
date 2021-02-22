///rgesture_shape_reverse(id,replace?)

var temp, tempx, tempy, tempxo, tempyo;
if argument1 = 0
{
    temp = rgesture_shape_create(global.gesture_c[argument0],global.gesture_w[argument0],global.gesture_h[argument0])
}
else temp = argument0
for(i = 0; i < rgesture_point_number(argument0); i += 1)
{
    tempx[i] = global.gesture_x[temp,i]
    tempy[i] = global.gesture_y[temp,i]
}
tempxo = rgesture_point_x(argument0,rgesture_point_number(argument0))
tempyo = rgesture_point_y(argument0,rgesture_point_number(argument0))

for(i = 0; i < rgesture_point_number(argument0); i += 1)
{
    global.gesture_x[temp,i] = tempx[rgesture_point_number(argument0)-1-i] - tempxo
    global.gesture_y[temp,i] = tempy[rgesture_point_number(argument0)-1-i] - tempyo
}
return temp

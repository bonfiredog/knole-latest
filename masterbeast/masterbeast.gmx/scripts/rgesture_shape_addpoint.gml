///gesture_shape_addpoint(id,x,y)

if argument0 = 0 
{
    show_error("Error in function gesture_shape_addpoint: Invalid id.",0)
    return -1
}

global.gesture_x[argument0,global.gesture_p[argument0]] = argument1 
global.gesture_y[argument0,global.gesture_p[argument0]] = argument2
global.gesture_p[argument0] += 1
return 1

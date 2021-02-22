///rgesture_shape_setup()

if argument0 = 0 
{
    show_error("Error in function gesture_shape_setup: Invalid id.",0)
    return -1
}

global.gesture_c[argument0] = argument1
global.gesture_w[argument0] = argument2
global.gesture_h[argument0] = argument3

return 1

///rgesture_shape_create(cutoff,width,height)

global.gesture_current += 1

global.gesture_x[global.gesture_current,0] = 0 
global.gesture_y[global.gesture_current,0] = 0
global.gesture_p[global.gesture_current] = 1
global.gesture_c[global.gesture_current] = argument0
global.gesture_w[global.gesture_current] = argument1
global.gesture_h[global.gesture_current] = argument2
global.gesture_per[global.gesture_current] = 0
global.gesture_enabled[global.gesture_current] = 0

return global.gesture_current

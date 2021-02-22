///rgesture_capture(x,y)

global.gesture_mousex[global.gesture_point] = argument0
global.gesture_mousey[global.gesture_point] = argument1
global.gesture_point += 1
if (global.gesture_maxx < argument0)
    global.gesture_maxx = argument0;
if (global.gesture_maxy < argument1)
    global.gesture_maxy = argument1;
if (global.gesture_minx > argument0)
    global.gesture_minx = argument0;
if (global.gesture_miny > argument1)
    global.gesture_miny = argument1;

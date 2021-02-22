///gesture_shape_subdivide(id)

var i, cp, tax, tay;
lx = global.gesture_x[argument0,global.gesture_p[argument0]-1]
ly = global.gesture_y[argument0,global.gesture_p[argument0]-1]
cp = 0
for(i = 0; cp < global.gesture_p[argument0]-1; i += 2)
{
    tax[i] = global.gesture_x[argument0,cp]
    tay[i] = global.gesture_y[argument0,cp]
    tax[i+1] = (global.gesture_x[argument0,cp]+global.gesture_x[argument0,cp+1])*.5
    tay[i+1] = (global.gesture_y[argument0,cp]+global.gesture_y[argument0,cp+1])*.5
    cp += 1
}
for(a = 0; a < i; a += 1)
{
    global.gesture_x[argument0,a] = tax[a]
    global.gesture_y[argument0,a] = tay[a]
}
global.gesture_p[argument0] = i+1
global.gesture_x[argument0,global.gesture_p[argument0]-1] = lx 
global.gesture_y[argument0,global.gesture_p[argument0]-1] = ly

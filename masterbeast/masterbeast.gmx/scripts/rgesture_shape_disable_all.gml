///r_gesture_disable_all(id,id...)

var i;
for(i = 0; i <= global.gesture_current; i += 1)
{
    global.gesture_enabled[i] = 0
}

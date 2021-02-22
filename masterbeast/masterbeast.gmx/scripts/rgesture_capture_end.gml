///rgesture_capture_end()

var cs,cp,currentmin,xoff,yoff,l1,l2;
xoff = global.gesture_mousex[0]
yoff = global.gesture_mousey[0]
xmap = ((global.gesture_maxx-global.gesture_minx)+(global.gesture_maxy-global.gesture_miny))/2
ymap = xmap
winner_value = 1.00000001
winner = 0

for(cs = 1; cs <= global.gesture_current; cs += 1)
{
    if global.gesture_enabled[cs] = 0 continue
    currentmin = 100000000
    current = 0
    value = 0
    width = global.gesture_w[cs]
    height = global.gesture_h[cs]
    cutoff = global.gesture_c[cs]*(xmap/((width+height)/2))
    for(cp = 1; cp < global.gesture_point; cp += 1)
    {
        if point_distance(global.gesture_mousex[cp]-xoff,global.gesture_mousey[cp]-yoff,global.gesture_x[cs,current]*(xmap/width),global.gesture_y[cs,current]*(ymap/height)) < currentmin
        {
            currentmin = point_distance(global.gesture_mousex[cp]-xoff,global.gesture_mousey[cp]-yoff,global.gesture_x[cs,current]*(xmap/width),global.gesture_y[cs,current]*(ymap/height))
        }

        if global.gesture_p[cs] > current + 1
        { 
            if global.gesture_p[cs] > current + 2 and current > 0
            {
              l1 = rline_distance(global.gesture_mousex[cp]-xoff,global.gesture_mousey[cp]-yoff,global.gesture_x[cs,current-1]*(xmap/width),global.gesture_y[cs,current-1]*(ymap/height),global.gesture_x[cs,current]*(xmap/width),global.gesture_y[cs,current]*(ymap/height))
              l2 = rline_distance(global.gesture_mousex[cp]-xoff,global.gesture_mousey[cp]-yoff,global.gesture_x[cs,current]*(xmap/width),global.gesture_y[cs,current]*(ymap/height),global.gesture_x[cs,current+1]*(xmap/width),global.gesture_y[cs,current+1]*(ymap/height))
            }
            else
            {
                l1 = 0
                l2 = 0
            }
            if point_distance(global.gesture_mousex[cp]-xoff,global.gesture_mousey[cp]-yoff,global.gesture_x[cs,current+1]*(xmap/width),global.gesture_y[cs,current+1]*(ymap/height)) + l2 < point_distance(global.gesture_mousex[cp]-xoff,global.gesture_mousey[cp]-yoff,global.gesture_x[cs,current]*(xmap/width),global.gesture_y[cs,current]*(ymap/height)) + l1
            {
                current += 1
                value += currentmin
                currentmin = 100000000
            }
        } 
        
        if current+1 = global.gesture_p[cs]
        {
            global.gesture_per[cs] = max(1-(value/cutoff),0)
            if (value/cutoff) < winner_value 
            {
                winner = cs
                winner_value = (value/cutoff)
            }
        }

    }
}
return winner

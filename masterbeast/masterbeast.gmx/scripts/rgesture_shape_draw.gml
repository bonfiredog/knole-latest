///rgesture_shape_draw(id,x,y)

draw_primitive_begin(pr_linestrip)
for(i = 0; i < global.gesture_p[argument0]; i += 1)
{
    draw_vertex(argument1+global.gesture_x[argument0,i],argument2+global.gesture_y[argument0,i])
    draw_circle(argument1+global.gesture_x[argument0,i],argument2+global.gesture_y[argument0,i],3,0)
}
draw_primitive_end()

///DrawLine(FirstX,FirstY,SecondX,SecondY,Color,Width,Transparency)

FirstX = argument0
FirstY = argument1
SecondX = argument2
SecondY = argument3
Color = argument4
Width = argument5
Transparency = argument6

draw_set_alpha(Transparency)
draw_set_color(Color)
draw_line_width(FirstX,FirstY,SecondX,SecondY,Width)
draw_set_alpha(1)

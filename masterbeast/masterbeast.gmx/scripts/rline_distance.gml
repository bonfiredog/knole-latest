///rline_distance(x0,y0,x1,y1,x2,y2)

var x0,x1,x2,y0,y1,y2;
x0 = argument0
y0 = argument1
x1 = argument2
y1 = argument3
x2 = argument4
y2 = argument5
return (abs((x2-x1)*(y1-y0)-(x1-x0)*(y2-y1)))/sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))


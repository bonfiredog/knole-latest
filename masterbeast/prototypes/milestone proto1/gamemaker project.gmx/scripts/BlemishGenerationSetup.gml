TotalBlemishesToGenerate = (sprite_width * sprite_height) / 10000
BlemishesGenerated = 0
FinishedGenerating = false

// top left point
var a = point_direction(0, 0, -sprite_xoffset, -sprite_yoffset) + image_angle;
var d = point_distance(0, 0, -sprite_xoffset, -sprite_yoffset);
var px1 = lengthdir_x(d, a);
var py1 = lengthdir_y(d, a);

// top right point
a = point_direction(0, 0, sprite_width - sprite_xoffset - 1, -sprite_yoffset) + image_angle;
d = point_distance(0, 0, sprite_width - sprite_xoffset - 1, -sprite_yoffset);
var px2 = lengthdir_x(d, a);
var py2 = lengthdir_y(d, a);

// bottom right point
a = point_direction(0, 0, sprite_width - sprite_xoffset - 1, sprite_height - sprite_yoffset - 1) + image_angle;
d = point_distance(0, 0, sprite_width - sprite_xoffset - 1, sprite_height - sprite_yoffset - 1);
var px3 = lengthdir_x(d, a);
var py3 = lengthdir_y(d, a);

// bottom left point
a = point_direction(0, 0, -sprite_xoffset, sprite_height - sprite_yoffset - 1) + image_angle;
d = point_distance(0, 0, -sprite_xoffset, sprite_height - sprite_yoffset - 1);
var px4 = lengthdir_x(d, a);
var py4 = lengthdir_y(d, a);

// calulate bounds
LeftEdge = x + min(px1, px2, px3, px4);
TopEdge = y + min(py1, py2, py3, py4);
RightEdge = x + max(px1, px2, px3, px4);
BottomEdge = y + max(py1, py2, py3, py4);



///draw_path_ext(path, x, y, angle, centerX, centerY, scale)
/***************************************************
  Path renderer with rotation and scaling support.
  argument 0 - path id
  argument 1 - x
  argument 2 - y
  argument 3 - angle
  [argument 4] - pivot x
  [argument 5] - pivot y
  [argument 6] - scale
  returns: nothing
 
  By Blokatt (blokatt.net)
 ***************************************************/
var path = argument[0];
var xx = argument[1];
var yy = argument[2];
var angle = degtorad(argument[3]);
var centerX = 0;
var centerY = 0;
var scale = 1;
var vertexCount = path_get_number(path);
var distance = 0;
var pointX, pointY, distX, distY, baseAngle;
 
if (argument_count > 4){
   centerX = argument[4];
   centerY = argument[5];
   scale = argument[6];
}
 
draw_primitive_begin(pr_linestrip);
for (var i = 0; i < vertexCount; i++){
    pointX = path_get_point_x(path, i);
    pointY = path_get_point_y(path, i);
    distX = pointX - centerX;
    distY = pointY - centerY;
    distance = sqrt(distX * distX + distY * distY) * scale;
    baseAngle = arctan2(pointY - centerY, pointX - centerX);
    draw_vertex(xx + cos(baseAngle + angle) * distance, yy - sin(baseAngle + angle) * distance);
}
if (path_get_closed(path)){
    pointX = path_get_point_x(path, 0);
    pointY = path_get_point_y(path, 0);
    distX = pointX - centerX;
    distY = pointY - centerY;
    distance = sqrt(distX * distX + distY * distY) * scale;
    baseAngle = arctan2(pointY - centerY, pointX - centerX);
    draw_vertex(xx + cos(baseAngle + angle) * distance, yy - sin(baseAngle + angle) * distance);
}
draw_primitive_end();

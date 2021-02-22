///tmc_lux_grad(hash, x, y, z):
//source: Converted to GML by Xot, source below
//license: http://www.gmlscripts.com/license.html
//read: http://flafla2.github.io/2014/08/09/perlinnoise.html
//Changes: name changed to prevent function name collision
/// grad(hash, x, y, z):
//
//  GML implementation of Ken Perlin's Improved Noise
//  http://mrl.nyu.edu/~perlin/noise/
//
/// GMLscripts.com/license
{
    var u= 0,v=0;
    argument0 = argument0 & 15;
    if (argument0 < 8)
        u = argument1;
    else
        u = argument2;
    if (argument0 < 4)
        v = argument2;
    else if (argument0 == 12 or argument0 == 14)
        v = argument1;
    else
        v = argument3;
    if (argument0 & 1 != 0)
        u = -u;
    if (argument0 & 2 != 0)
        v = -v;
    return u + v;
}

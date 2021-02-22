///tmc_lux_fade(n)
//source: Converted to GML by Xot, source below
//license: http://www.gmlscripts.com/license.html
//read: http://flafla2.github.io/2014/08/09/perlinnoise.html
//Changes: name changed to prevent function name collision
/// fade(n)
//
//  GML implementation of Ken Perlin's Improved Noise
//  http://mrl.nyu.edu/~perlin/noise/
//
/// GMLscripts.com/license
{
    return argument0 * argument0 * argument0 * (argument0 * (argument0 * 6 - 15) + 10);
}

///tmc_lux_noise(x,y,z)
//source: Converted to GML by Xot, source below
//license: http://www.gmlscripts.com/license.html
//read: http://flafla2.github.io/2014/08/09/perlinnoise.html
//Changes: name changed to prevent function name collision
/// noise(x,y,z)
//
//  GML implementation of Ken Perlin's Improved Noise
//  http://mrl.nyu.edu/~perlin/noise/
//
/// GMLscripts.com/license
{
    var X,Y,Z,u,v,w,A,AA,AB,B,BA,BB;
    X = floor(argument0) & 255;
    Y = floor(argument1) & 255;
    Z = floor(argument2) & 255;
    argument0 -= floor(argument0);
    argument1 -= floor(argument1);
    argument2 -= floor(argument2);
    u = tmc_lux_fade(argument0);
    v = tmc_lux_fade(argument1);
    w = tmc_lux_fade(argument2);
    A  = global.tmc_lux_noiseP[X  ]+Y;
    AA = global.tmc_lux_noiseP[A  ]+Z;
    AB = global.tmc_lux_noiseP[A+1]+Z;
    B  = global.tmc_lux_noiseP[X+1]+Y;
    BA = global.tmc_lux_noiseP[B  ]+Z;
    BB = global.tmc_lux_noiseP[B+1]+Z;
    
    var l1 =lerp(
                        tmc_lux_grad(global.tmc_lux_noiseP[AA  ], argument0,     argument1,     argument2),
                        tmc_lux_grad(global.tmc_lux_noiseP[BA  ], argument0 - 1, argument1,     argument2),
                        u);
    var l2 = lerp(
                        tmc_lux_grad(global.tmc_lux_noiseP[AB  ], argument0,     argument1 - 1, argument2),
                        tmc_lux_grad(global.tmc_lux_noiseP[BB  ], argument0 - 1, argument1 - 1, argument2),
                        u);
    var l3 = lerp(
                        tmc_lux_grad(global.tmc_lux_noiseP[AA+1], argument0,     argument1,     argument2 - 1),
                        tmc_lux_grad(global.tmc_lux_noiseP[BA+1], argument0 - 1, argument1,     argument2 - 1),
                        u);  
                   
    var l4 = lerp(
                        tmc_lux_grad(global.tmc_lux_noiseP[AB+1], argument0,     argument1 - 1, argument2 - 1),
                        tmc_lux_grad(global.tmc_lux_noiseP[BB+1], argument0 - 1, argument1 - 1, argument2 - 1),
                        u); 
    var l5 = lerp(
                     l1,
                     l2,
                     v);
    var l6 = lerp(
                    l3,
                    l4,
                    v);
    return lerp(
                l5,
                l6,
                w);
}

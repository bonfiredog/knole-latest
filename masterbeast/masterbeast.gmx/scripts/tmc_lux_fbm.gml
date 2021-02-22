///tmc_lux_fbm(x,y,z,H,lacunarity,octaves)
//source: Converted to GML by Xot, source below
//license: http://www.gmlscripts.com/license.html
//Changes: name changed to prevent function name collision
//read: http://flafla2.github.io/2014/08/09/perlinnoise.html
//read: http://www.gamasutra.com/view/feature/131507/a_realtime_procedural_universe_.php?print=1
/// fbm(x,y,z,H,lacunarity,octaves)
//
//  Noise-based fractal Brownian motion
//
/// GMLscripts.com/license
{
    var px,py,pz,H,lacunarity,octaves,value;
    px = argument0;
    py = argument1;
    pz = argument2;
    H = argument3;
    lacunarity = argument4;
    octaves = argument5;
    value = 0.0;
    
    var frequency,i;
    frequency = 1.0;
    for (i=0; i<octaves; i+=1)
    {
        value += tmc_lux_noise(px,py,pz) * power(frequency, -H);
        px *= lacunarity;
        py *= lacunarity;
        pz *= lacunarity;
        frequency *= lacunarity;
    }    
    return value;
}

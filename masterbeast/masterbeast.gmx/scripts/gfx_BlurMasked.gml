///gfx_BlurMasked(SurfaceBuffer, Mask, Iterations, Radius, Invert);
var sMask = shader_get_sampler_index(shd_BlurMasked,"mask");
var uResInv = shader_get_uniform(shd_BlurMasked,"ResInv");
var uRad = shader_get_uniform(shd_BlurMasked,"Rad");
var i;

shader_set(shd_BlurMasked);
texture_set_stage(sMask,argument1);
shader_set_uniform_f(uResInv,surface_get_width(argument0),surface_get_height(argument0),argument4);
for (i=0; i<argument2; i+=1){
    shader_set_uniform_f(uRad,argument3+(i*0.333), i mod 2);
    surface_set_target(argument0);
    draw_surface(argument0,0,0);
    surface_reset_target();
}
shader_reset();

surface_set_target(argument0);
surface_reset_target();

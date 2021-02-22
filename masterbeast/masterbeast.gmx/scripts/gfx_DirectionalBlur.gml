///gfx_DirectionalBlur(SurfaceBuffer, Iterations, Direction, Size);
if(argument1>0 && argument3>0){
    var i;
    var DBlurResSize = shader_get_uniform(shd_DirectionalBlur,'ResSize');
    var DblurResW = surface_get_width(argument0);
    var DblurResH = surface_get_height(argument0);
    
    shader_set(shd_DirectionalBlur);
    shader_set_uniform_f(shader_get_uniform(shd_DirectionalBlur,'dir'),argument2);
    for (i=0; i<argument1; i+=1){
        shader_set_uniform_f(DBlurResSize,DblurResW,DblurResH,argument3/(9*(i+1)));
        surface_set_target(argument0);
        draw_surface(argument0,0,0);
        surface_reset_target();
    }
    shader_reset();    
    surface_set_target(argument0);
    surface_reset_target();
}

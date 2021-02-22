///gfx_Blur(SurfaceBuffer, Type[0-2], Iterations, Size);
if(argument2>0 && argument3>0){
    var i;
    var BlurResSize = shader_get_uniform(shd_Blur,"ResSize");
    var BlurType = shader_get_uniform(shd_Blur,"type");

    var BlurResX = surface_get_width(argument0);
    var BlurResY = surface_get_height(argument0);

    shader_set(shd_Blur);
    shader_set_uniform_f(BlurType,argument1);

    for (i=0; i<argument2; i+=1){
        shader_set_uniform_f(BlurResSize,BlurResX,BlurResY,argument3*(i+0.333));

        if(argument1 = 2){
            shader_set_uniform_f(BlurType,false);
            surface_set_target(argument0);
            draw_surface(argument0,0,0);
            surface_reset_target();
            shader_set_uniform_f(BlurType,true);
        }

        surface_set_target(argument0);
        draw_surface(argument0,0,0);
        surface_reset_target();
    }

    shader_reset();    
    surface_set_target(argument0);
    surface_reset_target();
}

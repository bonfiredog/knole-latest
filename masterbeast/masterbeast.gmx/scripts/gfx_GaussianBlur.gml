///gfx_GaussianBlur(SurfaceBuffer, Iterations, Radius, Bokeh);
if(argument1>0 && argument2>0){
    var SHADER, uRESOLUTION, uRADIUS, uBOKEH, i;
    
    SHADER = shd_GaussianBlur;
    
    uRESOLUTION = shader_get_uniform(SHADER,"RESOLUTION");    
    uRADIUS = shader_get_uniform(SHADER,"RADIUS");
    uBOKEH = shader_get_uniform(SHADER,"BOKEH");

    shader_set(SHADER);
    shader_set_uniform_f(uRESOLUTION,surface_get_width(argument0),surface_get_height(argument0));
    shader_set_uniform_f(uBOKEH,argument3);    
    
    for (i=0; i<argument1; i+=1){
        shader_set_uniform_f(uRADIUS,argument2/(i+1));        
        surface_set_target(argument0);
        draw_surface(argument0,0,0);
        surface_reset_target();
    }
    
    shader_reset();
    
    surface_set_target(argument0);
    surface_reset_target();
}

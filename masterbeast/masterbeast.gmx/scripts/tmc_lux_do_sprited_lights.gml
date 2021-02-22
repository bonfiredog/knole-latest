//tmc_lux_do_sprited_lights()
if(global.tmc_lux_sprited_lights_on == 0) exit;
var success = false;
//show_debug_message(global.tmc_lux_sprited_shadows_at);
if(global.tmc_lux_sprited_lights_at or global.tmc_lux_sprited_shadows_at or global.tmc_lux_light_at)
{
   // dbug why only one shadow is drawn
    //if we are doing the app surface vesion
    if(!global.tmc_lux_sprited_lights_compatibility_mode && surface_exists(application_surface) && application_surface_is_enabled())
    {
        //do the application surface method   
        var as_w = surface_get_width(application_surface);
        var as_h = surface_get_height(application_surface);
        var xs = as_w/view_wview;
        var ys = as_h/view_hview;
        //if full on lighting blend with back buffer
        if(global.tmc_lux_sprited_lights_on_surface)
        {
            //grab the content of the application surface to the buffer
            global.tmc_lux_back_buffer = tmc_lux_safe_surface_create(global.tmc_lux_back_buffer,as_w,as_h);
            var as_clone = global.tmc_lux_back_buffer;
            if(as_clone!=-1)
            {
                draw_set_blend_mode(bm_normal);
                draw_enable_alphablend(0)
                surface_copy(as_clone,0,0,application_surface);
                //surface_set_target(as_clone);
                //draw_text_colour(100,100,"WTF",c_white,c_white,c_white,c_white,1);
                //surface_reset_target();
                draw_enable_alphablend(1)
                var viewx1 = 0,
                    viewy1 = 0,
                    viewx2 = view_wview,
                    viewy2 = view_hview;
                    
                if(global.tmc_lux_sprited_shadows_on)
                {
                    if(global.tmc_lux_sprited_shadows_at)
                    {
                        global.tmc_lux_lights_buffer = tmc_lux_safe_surface_create(global.tmc_lux_lights_buffer,as_w,as_h);      
                        var surf_lights = global.tmc_lux_lights_buffer;
                        var processed_spr_lights = 0;
                        var processed_spr_lights_at = 0;
                        var processed_lights = 0;
                        var processed_lights_at = 0;
                        if(surf_lights!=-1)
                        {
                            surface_set_target(surf_lights);
                            {
                                draw_clear_alpha(c_black,0);
                                draw_set_blend_mode(bm_add);
                                var PlanePoint = tmc_lux_vect3(0,0,0);
                                var PlaneNormal = tmc_lux_vect3(0,0,1);
                                var out_IntersectPoint = tmc_lux_vect3(0,0,0);
                                var shadowEndPos = tmc_lux_vect3(0,0,0);
                                var shadowPos = tmc_lux_vect3(0,0,0);
                                var Segment = tmc_lux_segment(shadowPos,shadowEndPos);
                                var Direction3d = tmc_lux_vect3(0,0,0);
                                var cone_facing = tmc_lux_vect3(0,0,0);
                                var light,shadow,lx,ly,dx,dy,sx,sy,sz,dz,lzf,fac,range,dist,radius;
                                d3d_set_fog(1,c_white,0,0);
                                for(var j = 0; j<global.tmc_lux_sprited_shadows_at; ++j)
                                {
                                    shadow = global.tmc_lux_sprited_shadows[j];
                                   
                                    sz = shadow[SPRITED_SHADOWS.Z];
                                    sx = shadow[SPRITED_SHADOWS.X];
                                    sy = shadow[SPRITED_SHADOWS.Y];
                                    radius = shadow[SPRITED_SHADOWS.RADIUS];
                                    shadowPos[@0] = sx;
                                    shadowPos[@1] = sy;
                                    shadowPos[@2] = sz;
                                    for(var i = 0; i< global.tmc_lux_sprited_lights_at; ++i)
                                    {
                                        light = global.tmc_lux_sprited_lights[i];
                                        if(light[SPRITED_LIGHT.SHADOW_PROCESSED]==0)
                                        {
                                            if(light[SPRITED_LIGHT.SHADOW_CASTING]!=0)
                                            {
                                                lz = light[SPRITED_LIGHT.Z];
                                                lzf = lz;
                                                dz = sz-lz;
                                                var doit = lz>depth;
                                                //light[@SPRITED_LIGHT.SHADOW_PROCESSED] = doit;
                                                if(dz>1 and doit)
                                                {
                                                    processed_spr_lights[processed_spr_lights_at++] = i;
                                                    range = light[SPRITED_LIGHT.RADIUS];
                                                    
                                                    lx = light[SPRITED_LIGHT.X];
                                                    ly = light[SPRITED_LIGHT.Y];
                                                    lz = sz-400;
                                                    dist = point_distance(lx,ly,sx,sy);
                                                    //db[0] = range;
                                                    //db[1] = radius;
                                                    range+=radius;
                                                    //db[2] = range;
                                                    //show_debug_message(db)
                                                    //draw_circle_colour((lx-view_xview)* xs,(ly-view_yview)* ys,range* xs,c_dkgray,c_dkgray,1)
                                                        
                                                    if(dist<range)
                                                    {
                                                        Direction3d[@0] = sx-lx;
                                                        Direction3d[@1] = sy-ly;
                                                        Direction3d[@2] = sz-lz;
                                                        tmc_lux_vect_norm_self(Direction3d);
                                                        tmc_lux_vect_multr_self(Direction3d,10000000);
                                                        shadowEndPos[@0] = sx+Direction3d[0];
                                                        shadowEndPos[@1] = sy+Direction3d[1];
                                                        shadowEndPos[@2] = sz+Direction3d[2];
                                                        
                                                        //dx = sx-lx;
                                                        //dy = sy-ly;
                                                        //d = point_distance_3d(0,0,0,dx,dy,dz);
                                                        //fac = lzf+(dz)
                                                        //sx += dx*(d);
                                                        //sy += dy*(d);
                                                        if(tmc_lux_segment_intersect_plane(Segment, PlanePoint, PlaneNormal, out_IntersectPoint))
                                                        {
                                                            
                                                            var xx = (out_IntersectPoint[0]-view_xview);
                                                            var yy = (out_IntersectPoint[1]-view_yview);
                                                            if(xx+radius>viewx1 && xx-radius<viewx2 && yy+radius>viewy1 && yy-radius<viewy2)
                                                            {
                                                                draw_sprite_ext(
                                                                    shadow[SPRITED_SHADOWS.SPRITE],
                                                                    shadow[SPRITED_SHADOWS.INDEX],
                                                                    xx*xs,
                                                                    yy*ys,
                                                                    shadow[SPRITED_SHADOWS.XSCALE] * xs,
                                                                    shadow[SPRITED_SHADOWS.YSCALE] * ys,
                                                                    shadow[SPRITED_SHADOWS.ROT],
                                                                    c_white,
                                                                    shadow[SPRITED_SHADOWS.ALPHA]*(1-(dist/range)) * light[SPRITED_LIGHT.SHADOW_CASTING]
                                                                );
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    for(var i = 0; i< global.tmc_lux_light_at; ++i)
                                    {
                                        light = global.tmc_lux_lights[i];

                                        if(light[LIGHT.SHADOW_PROCESSED]==0)
                                        {
                                            if(light[LIGHT.SHADOW_CASTING]!=0)
                                            {
                                                lz = light[LIGHT.Z];
                                                lzf = lz;
                                                dz = sz-lz;
                                                if(dz>1)
                                                {
                                                    range = light[LIGHT.RANGE];
                                                    
                                                    lx = light[LIGHT.X];
                                                    ly = light[LIGHT.Y];
                                                
                                                    dist = point_distance_3d(lx,ly,lz,sx,sy,sz);
                                                    var doit = lz>depth;
                                                    //light[@LIGHT.SHADOW_PROCESSED] = doit;
                                                    if(dist<range and doit)
                                                    {
                                                        processed_lights[processed_lights_at++] = i;                                                
                                                        Direction3d[@0] = sx-lx;
                                                        Direction3d[@1] = sy-ly;
                                                        Direction3d[@2] = sz-lz;
                                                        tmc_lux_vect_norm_self(Direction3d);
                                                        
                                                        
                                                        //cone linmits
                                                        var cut_off = light[@LIGHT.CONE_CO]; //-2 is shere, -1 is a dimple sphere. .5 is half a sphere. .9 is a tight cone. must exclude 1
                                                        var cone_dot = 1;
                                                        if(cut_off>-2)
                                                        {
                                                            cone_facing[@0] = light[@LIGHT.FX];
                                                            cone_facing[@1] = light[@LIGHT.FY];
                                                            cone_facing[@2] = light[@LIGHT.FZ];
                                                            tmc_lux_vect_norm_self(cone_facing);
                                                            cone_dot = (tmc_lux_vect_dot(cone_facing,Direction3d) - cut_off)/(1.0-cut_off);
                                                            //vec3 cone_dir = normalize(vec3(-light[@LIGHT.FX],-light[@LIGHT.FY],light[@LIGHT.FZ]));
                                                            //cone_dir = normalize(vec3((cone_dir.x) * x_cosine - (cone_dir.y) * y_sine,
                                                            //                    (cone_dir.x) * y_sine + (cone_dir.y) * x_cosine,
                                                            //                    cone_dir.z));
                                                            // cone_dot = (dot(cone_dir,Final_Light)-cut_off)/(1.0-cut_off);
                                                            //db[0] = cone_facing;
                                                            //db[1] = Direction3d;
                                                            //db[2] = dot_product_3d_normalised(cone_facing[@1],cone_facing[@2],cone_facing[@3],Direction3d[@1],Direction3d[@2],Direction3d[@3]);
                                                            //db[3] = tmc_lux_vect_dot(cone_facing,Direction3d);
                                                            //db[4] = cone_dot;
                                                            //cone_dot=tmc_lux_vect_dot(cone_facing,Direction3d)-cut_off;
                                                            //db[0] = cone_dot;
                                                            //db[1] = tmc_lux_vect_dot(cone_facing,Direction3d);
                                                            //show_debug_message(db)
                                                            cone_dot = clamp(cone_dot,0.0,0.5) * 2;
                                                            
                                                        }
                                                       
                                                            
                                                            
                                                        
                                                        tmc_lux_vect_multr_self(Direction3d,10000000);
                                                        shadowEndPos[@0] = sx+Direction3d[0];
                                                        shadowEndPos[@1] = sy+Direction3d[1];
                                                        shadowEndPos[@2] = sz+Direction3d[2];
                                                        
                                                        //dx = sx-lx;
                                                        //dy = sy-ly;
                                                        //d = point_distance_3d(0,0,0,dx,dy,dz);
                                                        //fac = lzf+(dz)
                                                        //sx += dx*(d);
                                                        //sy += dy*(d);
                                                        if(cone_dot>0 and tmc_lux_segment_intersect_plane(Segment, PlanePoint, PlaneNormal, out_IntersectPoint))
                                                        {
                                                            var xx = (out_IntersectPoint[0]-view_xview);
                                                            var yy = (out_IntersectPoint[1]-view_yview);
                                                            if(xx+radius>viewx1 && xx-radius<viewx2 && yy+radius>viewy1 && yy-radius<viewy2)
                                                            {
                                                                //range = point_distance_3d(lx,ly,lz,out_IntersectPoint[0],out_IntersectPoint[1],out_IntersectPoint[2])
                                                                // var att = 2000.0 / (light[LIGHT.FALLOFF] + (light[LIGHT.FALLOFF]*range) + (light[LIGHT.FALLOFF]*range*range));    
                                                                range = tmc_lux_range_from_falloff(light[LIGHT.R],light[LIGHT.G],light[LIGHT.B],light[LIGHT.POWER],light[LIGHT.FALLOFF],light[LIGHT.RANGE])
                                                                //arr[0] = dist;
                                                                //arr[1] = range;
                                                                range *= light[LIGHT.SHADOW_CASTING];
                                                                //arr[2] = range;
                                                                //arr[3] = shadow[SPRITED_SHADOWS.ALPHA]*(1-(dist/range)) *cone_dot * light[LIGHT.SHADOW_CASTING];
                                                                //show_debug_message(arr);
                                                                if(dist<range)
                                                                {
                                                                    draw_sprite_ext(
                                                                        shadow[SPRITED_SHADOWS.SPRITE],
                                                                        shadow[SPRITED_SHADOWS.INDEX],
                                                                        xx * xs,
                                                                        yy * ys,
                                                                        shadow[SPRITED_SHADOWS.XSCALE] * xs,
                                                                        shadow[SPRITED_SHADOWS.YSCALE] * ys,
                                                                        shadow[SPRITED_SHADOWS.ROT],
                                                                        c_white,
                                                                        shadow[SPRITED_SHADOWS.ALPHA]*(1-(dist/range)) *cone_dot//*att
                                                                    );
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    
                                }
                                d3d_set_fog(0,c_white,0,0);
                                draw_set_blend_mode(bm_subtract);
                                for(var j = 0; j<global.tmc_lux_sprited_shadows_at; ++j)
                                {
                                    shadow = global.tmc_lux_sprited_shadows[j];
                                    
                                    draw_sprite_ext(
                                            shadow[SPRITED_SHADOWS.SPRITE],
                                            shadow[SPRITED_SHADOWS.INDEX],
                                            (shadow[SPRITED_SHADOWS.X]-view_xview) * xs,
                                            (shadow[SPRITED_SHADOWS.Y]-view_yview) * ys,
                                            shadow[SPRITED_SHADOWS.XSCALE] * xs,
                                            shadow[SPRITED_SHADOWS.YSCALE] * ys,
                                            shadow[SPRITED_SHADOWS.ROT],
                                            c_black,
                                            1
                                        )
                                }
                                
                                draw_set_blend_mode(bm_normal);
                                
                                for(var i=0; i< processed_spr_lights_at;++i)
                                {
                                    light = global.tmc_lux_sprited_lights[processed_spr_lights[i]];
                                    light[@SPRITED_LIGHT.SHADOW_PROCESSED] = 1;
                                }
                                for(var i=0; i< processed_lights_at;++i)
                                {
                                    light = global.tmc_lux_lights[processed_lights[i]];
                                    light[@LIGHT.SHADOW_PROCESSED] = 1;
                                }
                            
                            } 
                            surface_reset_target();
                            if(surface_exists(as_clone))
                            {
                                surface_set_target(as_clone)
                                {
                                    //draw_set_blend_mode(bm_subtract);
                                    draw_surface_ext(surf_lights,0,0,1,1,0,c_black,global.tmc_lux_sprited_shadows_power);
                                    //draw_set_blend_mode(bm_normal);
                                    //draw_surface(as_clone,0,0);
                                }
                                surface_reset_target()
                            }
                        }
                        //global.tmc_lux_sprited_shadows_at = 0; //cleared next step
                    }
                }
            }
            //process the draw batch to the lights surface  
            global.tmc_lux_lights_buffer = tmc_lux_safe_surface_create(global.tmc_lux_lights_buffer,as_w,as_h);      
            var surf_lights = global.tmc_lux_lights_buffer;
            if(surf_lights!=-1)
            {
                surface_set_target(surf_lights);
                {
                    draw_clear_alpha(c_black,0);
                    draw_set_blend_mode(bm_add);
                    
                    var light;
                    for(var i = 0; i< global.tmc_lux_sprited_lights_at; ++i)
                    {
                        light = global.tmc_lux_sprited_lights[i];
                        if(light[SPRITED_LIGHT.PROCESSED]==0)
                        {
                            light[@SPRITED_LIGHT.PROCESSED] = 1;
                            draw_sprite_ext(
                                light[SPRITED_LIGHT.SPRITE],
                                light[SPRITED_LIGHT.INDEX],
                                (light[SPRITED_LIGHT.X]-view_xview) * xs,
                                (light[SPRITED_LIGHT.Y]-view_yview) * ys,
                                light[SPRITED_LIGHT.XSCALE] * xs,
                                light[SPRITED_LIGHT.YSCALE] * ys,
                                light[SPRITED_LIGHT.ROT],
                                light[SPRITED_LIGHT.COLOUR],
                                light[SPRITED_LIGHT.ALPHA]
                            )
                       } 
                    }
                    
                    draw_set_blend_mode(bm_normal);
                } 
                surface_reset_target();
                
                //everything is still fine, final render the lights to the application surface
                if(surface_exists(surf_lights) and surface_exists(as_clone) and surface_exists(application_surface))
                {
                    var tex = surface_get_texture(surf_lights);
                    
                    surface_set_target(application_surface);
                    {
                        shader_set(tmc_lux_sprited_light_shdr);
                        texture_set_stage(global.tmc_lux_sh_sprited_light_back_buffer, tex);
                        draw_surface(as_clone,0,0);
                        shader_reset();
                        
                    }
                    surface_reset_target();
                    success = true;
                }
                
            }
            //if(surface_exists(surf_lights)) surface_free(surf_lights);
           
            //if(surface_exists(as_clone)) surface_free(as_clone);
        }
        else if(surface_exists(application_surface))
        {
            //use the back buffer is disabled, render bm_add to the app surface
            surface_set_target(application_surface);
            {
                //loop through the draw batch and simply draw with bm_add
                draw_set_blend_mode(bm_add);
                var light;
                for(var i = 0; i< global.tmc_lux_sprited_lights_at; ++i)
                {
                    light = global.tmc_lux_sprited_lights[i];
                    if(light[SPRITED_LIGHT.PROCESSED]==0)
                    {
                        light[@SPRITED_LIGHT.PROCESSED] = 1;
                        draw_sprite_ext(
                            light[SPRITED_LIGHT.SPRITE],
                            light[SPRITED_LIGHT.INDEX],
                            (light[SPRITED_LIGHT.X]-view_xview) * xs,
                            (light[SPRITED_LIGHT.Y]-view_yview) * ys,
                            light[SPRITED_LIGHT.XSCALE] * xs,
                            light[SPRITED_LIGHT.YSCALE] * ys,
                            light[SPRITED_LIGHT.ROT],
                            light[SPRITED_LIGHT.COLOUR],
                            light[SPRITED_LIGHT.ALPHA]
                        )
                    }
                }
                draw_set_blend_mode(bm_normal);
            } 
            surface_reset_target();
            success = true;
        }            
    }
    if(success == false)
    {
        //to the screen if we have to, everything failed or compatibility mode is on so forced to use the screen
        draw_set_blend_mode(bm_add);
        var light;
        for(var i = 0; i< global.tmc_lux_sprited_lights_at; ++i)
        {
            //loop through the draw batch and simply draw with bm_add on the screen directly
            light = global.tmc_lux_sprited_lights[i];
            if(light[SPRITED_LIGHT.PROCESSED]==0)
            {
                light[@SPRITED_LIGHT.PROCESSED] = 1;
                draw_sprite_ext(
                    light[SPRITED_LIGHT.SPRITE],
                    light[SPRITED_LIGHT.INDEX],
                    (light[SPRITED_LIGHT.X]),
                    (light[SPRITED_LIGHT.Y]),
                    light[SPRITED_LIGHT.XSCALE],
                    light[SPRITED_LIGHT.YSCALE],
                    light[SPRITED_LIGHT.ROT],
                    light[SPRITED_LIGHT.COLOUR],
                    light[SPRITED_LIGHT.ALPHA]
                )
            }
        }
        draw_set_blend_mode(bm_normal);
    }
    //global.tmc_lux_sprited_lights_at = 0;
}


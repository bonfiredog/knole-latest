///tmc_lux_set_norm_occ_shdr()
/*
    sets the shader with the data it need to do a render
    
    example:
        tmc_lux_set_norm_occ_shdr()
        draw_self()
        shader_reset()
    
    pre-requesites member variables
    
    color and poawer for ambient
    m_Ambient
    
    m_LightUnder defines if lights is allowed below
    
    texture coordinates arrays mermber variables
    m_SrcTexPos
    m_NormTexPos
    m_SpecTexPos
    m_OccTexPos
    
    normal texture member variable
    m_NormTex
    m_SpecTex
    m_OccTex
    
    m_LightSmooth defines how smooth the light is. a round unit from 1 to 1000 or more 1000 is sufficiently smooth... if you want toon/cell shading, pass a low value. 1 mean 1 possible intencity, 2 means 2 intencities and so on

    m_FlipRGB this array tells the shader to flip the r,g or b values of the normal map. this can be mapped to image_xclale<0 for red and image_yclale<0 for blue. 
        it can also be used to flip an inverted normal map if you dont want to fix the normal texture image itself
    
    uses angle from image_angle from the instance
    uses x,y from the instance
    
    uses x,y from the instance and the extra z member variable
    
*/

if(global.tmc_lux_lights_on == 0) return 0

shader_set(tmc_lux_norm_occ_shdr);

var  totlights = 0
var lightpos;
lightpos[0] = 0;
var lightcols;
lightcols[0] = 0;
var lightfalloffs;
lightfalloffs[0] = 0;
var ranges;
ranges[0] = 0;
var conspecs;
conespecs[0] = 0;
var anchor = noone;
var TheZ = z;
var LightUnder = m_LightUnder;
var allowed;
with(tmc_lux_get_anchor(x,y))
{
    anchor = id;
    var light;
    for(var i = 0; i < num_lights; i++)
    {
        light = lights[i];
        //allowed = light[@LIGHT.Z]<=TheZ or LightUnder;
        if(light[@LIGHT.Z]<=TheZ or LightUnder)
        {
            lightpos[totlights*3+0] = light[@LIGHT.X];
            lightpos[totlights*3+1] = light[@LIGHT.Y];
            lightpos[totlights*3+2] = light[@LIGHT.Z];
            
            lightcols[totlights*4+0] = light[@LIGHT.R];
            lightcols[totlights*4+1] = light[@LIGHT.G];
            lightcols[totlights*4+2] = light[@LIGHT.B];
            lightcols[totlights*4+3] = light[@LIGHT.POWER];
            
            lightfalloffs[totlights] = light[@LIGHT.FALLOFF];
            
            ranges[totlights] = light[@LIGHT.RANGE];
    
            conespecs[totlights*4+0] = light[@LIGHT.FX];
            conespecs[totlights*4+1] = light[@LIGHT.FY];
            conespecs[totlights*4+2] = light[@LIGHT.FZ];
            conespecs[totlights*4+3] = light[@LIGHT.CONE_CO];        
            
            totlights++;
        }        

    }
    for(var i = totlights; i < global.max_ligths_per_cell; i++)
    {
        
        lightpos[i*3+0] = 0;
        lightpos[i*3+1] = 0;
        lightpos[i*3+2] = 0;
        
        lightcols[i*4+0] = 0;
        lightcols[i*4+1] = 0;
        lightcols[i*4+2] = 0;
        lightcols[i*4+3] = 0;
        
        lightfalloffs[i] = 1;
        ranges[i] = 0; //last light flag

        conespecs[i*4+0] = 0;
        conespecs[i*4+1] = 0;
        conespecs[i*4+2] = 0;
        conespecs[i*4+3] = -2;        
       break;

    }
    shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_LightPos,lightpos); //XYZ
    shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_LightColor,lightcols); //R,G,B, Strength
    shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_Falloff,lightfalloffs); 
    shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_MaxRange,ranges); 
    shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_ConeSpecs,conespecs); 
    

}



shader_set_uniform_f(global.tmc_lux_sh_norm_occ_pos_Z,z);
shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_GlobalAmbientColor,global.tmc_lux_GlobalAmbientColor);
shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_AmbientColor,m_Ambient);

shader_set_uniform_f(global.tmc_lux_sh_norm_occ_Angle,degtorad(image_angle));

texture_set_stage(global.tmc_lux_sh_norm_occ_samp_normaltex, m_NormTex);

shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_source_texture_pos, m_SrcTexPos);
shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_norm_texture_pos, m_NormTexPos);


texture_set_stage(global.tmc_lux_sh_norm_occ_samp_ambiant_tex, m_OccTex);
shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_amb_texture_pos, m_OccTexPos);

shader_set_uniform_f(global.tmc_lux_sh_norm_occ_LightSmooth,m_LightSmooth);

shader_set_uniform_f_array(global.tmc_lux_sh_norm_occ_flip_rgb, m_FlipRGB);

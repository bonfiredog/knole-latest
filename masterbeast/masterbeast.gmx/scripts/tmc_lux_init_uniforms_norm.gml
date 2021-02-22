///tmc_lux_init_uniforms_norm()
global.tmc_lux_sh_norm_LightPos = shader_get_uniform(tmc_lux_norm_shdr,"LightPos");
global.tmc_lux_sh_norm_LightColor = shader_get_uniform(tmc_lux_norm_shdr,"LightColor");
global.tmc_lux_sh_norm_AmbientColor = shader_get_uniform(tmc_lux_norm_shdr,"AmbientColor");
global.tmc_lux_sh_norm_Falloff = shader_get_uniform(tmc_lux_norm_shdr,"Falloff");
global.tmc_lux_sh_norm_ConeSpecs = shader_get_uniform(tmc_lux_norm_shdr,"ConeSpecs");
global.tmc_lux_sh_norm_samp_normaltex = shader_get_sampler_index(tmc_lux_norm_shdr, "samp_normal_tex");

global.tmc_lux_sh_norm_Angle = shader_get_uniform(tmc_lux_norm_shdr,"angle");
global.tmc_lux_sh_norm_MaxRange  = shader_get_uniform(tmc_lux_norm_shdr,"MaxRange");

global.tmc_lux_sh_norm_source_texture_pos = shader_get_uniform(tmc_lux_norm_shdr,"source_texture_pos");
global.tmc_lux_sh_norm_norm_texture_pos = shader_get_uniform(tmc_lux_norm_shdr,"norm_texture_pos");

global.tmc_lux_sh_norm_pos_Z = shader_get_uniform(tmc_lux_norm_shdr,"Z");
global.tmc_lux_sh_norm_GlobalAmbientColor = shader_get_uniform(tmc_lux_norm_shdr,"GlobalAmbientColor");
global.tmc_lux_sh_norm_LightSmooth = shader_get_uniform(tmc_lux_norm_shdr,"LightSmooth");

global.tmc_lux_sh_norm_flip_rgb = shader_get_uniform(tmc_lux_norm_shdr,"flip_rgb");

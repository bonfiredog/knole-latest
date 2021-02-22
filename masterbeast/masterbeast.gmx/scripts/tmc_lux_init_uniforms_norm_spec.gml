///tmc_lux_init_uniforms_norm_spec()
global.tmc_lux_sh_norm_spec_LightPos = shader_get_uniform(tmc_lux_norm_spec_shdr,"LightPos");
global.tmc_lux_sh_norm_spec_LightColor = shader_get_uniform(tmc_lux_norm_spec_shdr,"LightColor");
global.tmc_lux_sh_norm_spec_AmbientColor = shader_get_uniform(tmc_lux_norm_spec_shdr,"AmbientColor");
global.tmc_lux_sh_norm_spec_Falloff = shader_get_uniform(tmc_lux_norm_spec_shdr,"Falloff");
global.tmc_lux_sh_norm_spec_ConeSpecs = shader_get_uniform(tmc_lux_norm_spec_shdr,"ConeSpecs");
global.tmc_lux_sh_norm_spec_samp_normaltex = shader_get_sampler_index(tmc_lux_norm_spec_shdr, "samp_normal_tex");

global.tmc_lux_sh_norm_spec_Angle = shader_get_uniform(tmc_lux_norm_spec_shdr,"angle");
global.tmc_lux_sh_norm_spec_MaxRange  = shader_get_uniform(tmc_lux_norm_spec_shdr,"MaxRange");

global.tmc_lux_sh_norm_spec_source_texture_pos = shader_get_uniform(tmc_lux_norm_spec_shdr,"source_texture_pos");
global.tmc_lux_sh_norm_spec_norm_texture_pos = shader_get_uniform(tmc_lux_norm_spec_shdr,"norm_texture_pos");


global.tmc_lux_sh_norm_spec_samp_specular_tex = shader_get_sampler_index(tmc_lux_norm_spec_shdr, "samp_specular_tex");
global.tmc_lux_sh_norm_spec_spec_texture_pos = shader_get_uniform(tmc_lux_norm_spec_shdr,"spec_texture_pos");

global.tmc_lux_sh_norm_spec_pos_Z = shader_get_uniform(tmc_lux_norm_spec_shdr,"Z");
global.tmc_lux_sh_norm_spec_GlobalAmbientColor = shader_get_uniform(tmc_lux_norm_spec_shdr,"GlobalAmbientColor");
global.tmc_lux_sh_norm_spec_LightSmooth = shader_get_uniform(tmc_lux_norm_spec_shdr,"LightSmooth");

global.tmc_lux_sh_norm_spec_flip_rgb = shader_get_uniform(tmc_lux_norm_spec_shdr,"flip_rgb");

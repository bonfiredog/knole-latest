///tmc_lux_init_uniforms_norm_occ()

global.tmc_lux_sh_norm_occ_LightPos = shader_get_uniform(tmc_lux_norm_occ_shdr,"LightPos");
global.tmc_lux_sh_norm_occ_LightColor = shader_get_uniform(tmc_lux_norm_occ_shdr,"LightColor");
global.tmc_lux_sh_norm_occ_AmbientColor = shader_get_uniform(tmc_lux_norm_occ_shdr,"AmbientColor");
global.tmc_lux_sh_norm_occ_Falloff = shader_get_uniform(tmc_lux_norm_occ_shdr,"Falloff");
global.tmc_lux_sh_norm_occ_ConeSpecs = shader_get_uniform(tmc_lux_norm_occ_shdr,"ConeSpecs");
global.tmc_lux_sh_norm_occ_samp_normaltex = shader_get_sampler_index(tmc_lux_norm_occ_shdr, "samp_normal_tex");

global.tmc_lux_sh_norm_occ_Angle = shader_get_uniform(tmc_lux_norm_occ_shdr,"angle");
global.tmc_lux_sh_norm_occ_MaxRange  = shader_get_uniform(tmc_lux_norm_occ_shdr,"MaxRange");

global.tmc_lux_sh_norm_occ_source_texture_pos = shader_get_uniform(tmc_lux_norm_occ_shdr,"source_texture_pos");
global.tmc_lux_sh_norm_occ_norm_texture_pos = shader_get_uniform(tmc_lux_norm_occ_shdr,"norm_texture_pos");

global.tmc_lux_sh_norm_occ_samp_ambiant_tex = shader_get_sampler_index(tmc_lux_norm_occ_shdr, "samp_ambiant_tex");
global.tmc_lux_sh_norm_occ_amb_texture_pos = shader_get_uniform(tmc_lux_norm_occ_shdr,"amb_texture_pos");

global.tmc_lux_sh_norm_occ_pos_Z = shader_get_uniform(tmc_lux_norm_occ_shdr,"Z");
global.tmc_lux_sh_norm_occ_GlobalAmbientColor = shader_get_uniform(tmc_lux_norm_occ_shdr,"GlobalAmbientColor");
global.tmc_lux_sh_norm_occ_LightSmooth = shader_get_uniform(tmc_lux_norm_occ_shdr,"LightSmooth");

global.tmc_lux_sh_norm_occ_flip_rgb = shader_get_uniform(tmc_lux_norm_occ_shdr,"flip_rgb");

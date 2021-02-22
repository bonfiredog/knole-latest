if RadialBlurOn = true {

RadialBlurFocusX = x
RadialBlurFocusY = y

shader_set(shd_radial_blur)
shader_set_uniform_f(RadialBlurUniTime, RadialBlurTimeVar);
shader_set_uniform_f(RadialBlurFocusPos, RadialBlurFocusX, RadialBlurFocusY);
shader_set_uniform_f(RadialBlurResolution, sprite_width, sprite_height);
shader_set_uniform_f(RadialBlurUniOffset, RadialBlurOffsetVar);
shader_set_uniform_f(RadialBlurUniBrightness, RadialBlurBrightnessVar);
draw_sprite(sprite_index,image_index,x,y)
shader_reset();
} else {
draw_sprite(sprite_index,image_index,x,y)
}


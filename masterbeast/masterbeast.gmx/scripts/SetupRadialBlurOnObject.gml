///SetupRadialBlurOnObject(xfocus,yfocus,offset,brightness)

XFocus = argument0
YFocus = argument1
Offset = argument2
Brightness = argument3

RadialBlurOn = false
RadialBlurUniTime = shader_get_uniform(shd_radial_blur,"time");
RadialBlurTimeVar = 0
RadialBlurFocusPos = shader_get_uniform(shd_radial_blur,"mouse_pos");
RadialBlurFocusX = XFocus
RadialBlurFocusY = YFocus
RadialBlurResolution = shader_get_uniform(shd_radial_blur,"resolution");
RadialBlurResolutionX = view_wview[1];
RadialBlurResolutionY = view_hview[1];
RadialBlurUniOffset = shader_get_uniform(shd_radial_blur,"radial_blur_offset");
RadialBlurOffsetVar = Offset;
RadialBlurUniBrightness = shader_get_uniform(shd_radial_blur,"radial_brightness");
RadialBlurBrightnessVar = 1;


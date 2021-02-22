///ResetRadialBlur()

RadialBlur = false
RadialBlurUniTime = shader_get_uniform(shd_radial_blur,"time");
RadialBlurTimeVar = 0
RadialBlurFocusPos = shader_get_uniform(shd_radial_blur,"mouse_pos");
RadialBlurFocusX = 0
RadialBlurFocusY = 0
RadialBlurResolution = shader_get_uniform(shd_radial_blur,"resolution");
RadialBlurResolutionX = view_wview;
RadialBlurResolutionY = view_hview;
RadialBlurUniOffset = shader_get_uniform(shd_radial_blur,"radial_blur_offset");
RadialBlurOffsetVar = 0.05;
RadialBlurUniBrightness = shader_get_uniform(shd_radial_blur,"radial_brightness");
RadialBlurBrightnessVar = 1;
RadialBlurSurf = surface_create(view_wview[mInterfaceController.CurrentViewNumber], view_hview[mInterfaceController.CurrentViewNumber]);


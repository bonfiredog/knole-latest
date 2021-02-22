///ResetGaussBlur

//Gaussian Blur
GaussianBlur = false
GaussUniResHoz = shader_get_uniform(shd_gaussian_horizontal,"resolution");
GaussUniResHoz = shader_get_uniform(shd_gaussian_vertical,"resolution");
GaussResX = view_wview[mInterfaceController.CurrentViewNumber]
GaussResY = view_hview[mInterfaceController.CurrentViewNumber]
GaussBlurAmountHoz = shader_get_uniform(shd_gaussian_vertical,"blur_amount");
GaussBlurAmountVer = shader_get_uniform(shd_gaussian_horizontal,"blur_amount");
GaussBlurAmountNumber = 0
GaussBlurSurface = surface_create(view_wview[mInterfaceController.CurrentViewNumber], view_hview[mInterfaceController.CurrentViewNumber])
GaussDrawSurface = surface_create(view_wview[mInterfaceController.CurrentViewNumber], view_hview[mInterfaceController.CurrentViewNumber])


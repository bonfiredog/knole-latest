///CreateLight(Type,Parent,XScale,YScale)

Type = argument0
Parent = argument1
XScale = argument2
YScale = argument3

//Set the type of the light.

if Type = "flickercircle" {
ThisLight = instance_create(x,y,oLightFlickerCircle)
} else {
exit;
}

ThisLight.x = Parent.x
ThisLight.y = Parent.y
ThisLight.depth = Parent.depth
ThisLight.image_xscale = XScale
ThisLight.image_yscale = YScale


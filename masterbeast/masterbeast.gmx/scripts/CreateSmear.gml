///CreateSmear(colour, alpha)

Colour = argument0
Alpha = argument1

//Create a single smear, its size depending on how smeared so far.

if position_meeting(mouse_x,mouse_y,mCreatureParent) {
Spawn = random_range(1,5)
for (i= 0; i < Spawn; i++) {
ThisSmear = instance_create(mouse_x,mouse_y,mSmear)
ThisSmear.image_alpha = Alpha
ThisSmear.image_blend = merge_color(Colour,c_black,0.7)
ThisSmear.image_xscale = (image_xscale * (random_range(0.0001,0.0006)) / 100) * (SmearExtent / SmearDistance)
ThisSmear.image_yscale = ThisSmear.image_xscale
}
}

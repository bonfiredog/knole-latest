///CreateStainBase(direction,speed,startingscale,friction,shrink,colour,x,y)

//Create an individual stain, setting it going.

if position_meeting(argument6,argument7,mCreatureParent) {
ThisStain = instance_create(argument6 + random_range(-16,16),argument7 + random_range(-16,16),mStain)
ThisStain.direction = argument0
ThisStain.speed = argument1
ThisStain.image_xscale = argument2
ThisStain.image_yscale = argument2
ThisStain.friction = argument3
ThisStain.Shrink = argument4
ThisStain.image_blend = argument5
}

///ShedNearbyFur(centrex,centrey,distance)

///FurShedding

//Set the CandidateFur from the currently activated furs (all types)
CandidateFur = instance_find(mFurSuperParent,random(instance_number(mFurSuperParent)))

while CandidateFur.Shed = true and (point_distance(CandidateFur.x,CandidateFur.y,argument0,argument1) > argument2)  {
CandidateFur = instance_find(mFurSuperParent,random(instance_number(mFurSuperParent)))
}


// When the fur has been set, set it to plucked, create a plucked fur at its location, and set it to the correct state.
if CandidateFur != noone {
CandidateFur.AmountGrown = 0
CandidateFur.Shed = true

ThisShed = instance_create(CandidateFur.x,CandidateFur.y,mFurPlucked)
ThisShed.x = CandidateFur.x
ThisShed.y = CandidateFur.y
ThisShed.image_angle = CandidateFur.direction
ThisShed.sprite_index = CandidateFur.sprite_index
ThisShed.direction = 270

if CandidateFur.Stained = false {
if CandidateFur.WetAmount > 0.1 {
ThisShed.image_blend = CandidateFur.CurrentWetBlend
}
}

ThisShed.image_xscale = CandidateFur.image_xscale
ThisShed.image_yscale = CandidateFur.image_yscale
ThisShed.PluckedSprite = choose(sHairPlucked1,sHairPlucked3)
ThisShed.Shedding = true

}

///GrowCanker(onmouse?)
with oCaulJug {
if argument0 = false {
Len = random_range(0,500)
Dir = random(360)
PosX = oCaulJug.x + lengthdir_x(Len,Dir)
PosY = oCaulJug.y + lengthdir_y(Len,Dir)

//Rescan if too far away 
while (position_meeting(PosX,PosY,mCreatureParent) = false) 
or (position_meeting(PosX,PosY,oCaulLip))
{
Len = random_range(0,90)
Dir = random(360)
PosX = oCaulJug.x + lengthdir_x(Len,Dir)
PosY = oCaulJug.y + lengthdir_y(Len,Dir)
}



ThisCanker = instance_create(PosX,PosY,oCaulCankerCentral)
with ThisCanker {
if place_meeting(x,y,oCaulJug) {
depth = random_range(MidCankerLayerLower,MidCankerLayerUpper)
} else {
depth = OnObjectsLayer
}
image_angle = 0
}
} else if argument0 = true {
Len = random_range(0,50)
Dir = random(360)
PosX = mouse_x + lengthdir_x(Len,Dir)
PosY = mouse_y + lengthdir_y(Len,Dir)


while (position_meeting(PosX,PosY,mCreatureParent) = false) 
or (position_meeting(PosX,PosY,mCaulParent))
{
Len = random_range(0,90)
Dir = random(360)
PosX = mouse_x + lengthdir_x(Len,Dir)
PosY = mouse_y + lengthdir_y(Len,Dir)
}

ThisCanker = instance_create(PosX,PosY,oCaulCankerCentral) 
with ThisCanker {
if place_meeting(x,y,oCaulJug) {
depth = random_range(MidCankerLayerLower,MidCankerLayerUpper)
} else {
depth = OnObjectsLayer
}
image_angle = 0
}
}

CankerGrowRateCurrent = BaseCankerRate - ((9000 / 100) * mCreatureController.Alive)
}


///GenerateWenRing(ringsize,x,y,number)

for (i=0; i < argument3; i++) {
Dir = random(360)
Len = irandom_range(argument0 - 10,argument0 + 10)
PosX = argument1 + lengthdir_x(Len,Dir)
PosY = argument2 + lengthdir_y(Len,Dir)

if position_meeting(PosX,PosY,mCreatureParent) {
instance_create(PosX,PosY,oWen)
}

}

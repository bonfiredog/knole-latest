///GenerateWenCluster(clustersize,x,y,number)

for (i=0; i < argument3; i++) {
Dir = random(360)
Len = irandom_range(0,argument0)
PosX = argument1 + lengthdir_x(Len,Dir)
PosY = argument2 + lengthdir_y(Len,Dir)

if position_meeting(PosX,PosY,mCreatureParent) {
instance_create(PosX,PosY,oWen)
}

}

///CreateStain(spawn,dir-b,dir-t,speed-b,speed-t,startingscale,fric-b,fric-t,shrink-b,shrink-t,colour,x,y)

//Cycle through and create as many stains as specified.

Spawn = argument0
DirectionBottom = argument1
DirectionTop = argument2
SpeedBottom = argument3
SpeedTop = argument4
StartingScale = argument5
FrictionBottom = argument6
FrictionTop = argument7
ShrinkBottom = argument8
ShrinkTop = argument9
Colour = argument10
X = argument11
Y = argument12

for (i=0; i < Spawn; i++) {
CreateStainBase(random_range(DirectionBottom,DirectionTop),random_range(SpeedBottom,SpeedTop),StartingScale,random_range(FrictionBottom,FrictionTop),random_range(ShrinkBottom,ShrinkTop),Colour,X,Y)
}

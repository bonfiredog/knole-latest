///CreateParticleSplash(x,y,range,shape,distribution,colour,liquidspeedmin,liquidspeedmax,liquidsizemin,liquidsizemax,liquiddirmin,liquiddirmax,liquidlifemin,liquidlifemax,liquidgravity,numberofdrops)

X = argument0
Y = argument1
Range = argument2
Shape = argument3
Distribution = argument4
LiquidColour = argument5
LiquidSpeedMin = argument6
LiquidSpeedMax = argument7
LiquidSizeMin = argument8
LiquidSizeMax = argument9
LiquidDirectionMin = argument10
LiquidDirectionMax = argument11
LiquidLifeMin = argument12
LiquidLifeMax = argument13
LiquidGravity = argument14
NumberOfDrops = argument15

part_type_sprite(mLiquidSubController.LiquidPart,choose(sSplash1,sSplash2,sSplash3),1,0,0)
part_type_size(mLiquidSubController.LiquidPart,LiquidSizeMin,LiquidSizeMax,-0.01,0.01)
part_type_speed(mLiquidSubController.LiquidPart,LiquidSpeedMin,LiquidSpeedMax,0,0)
part_type_direction(mLiquidSubController.LiquidPart,LiquidDirectionMin,LiquidDirectionMax,1,1)
part_type_gravity(mLiquidSubController.LiquidPart,LiquidGravity,270)
part_type_life(mLiquidSubController.LiquidPart,LiquidLifeMin,LiquidLifeMax)
part_type_colour1(mLiquidSubController.LiquidPart,LiquidColour)


part_emitter_region(
mLiquidSubController.PartSplashSys,
mLiquidSubController.LiquidEmit,
X - Range,
X + Range,
Y - Range,
Y + Range,
Shape,
Distribution
)

part_emitter_burst(
mLiquidSubController.PartSplashSys,
mLiquidSubController.LiquidEmit,
mLiquidSubController.LiquidPart,
NumberOfDrops
)



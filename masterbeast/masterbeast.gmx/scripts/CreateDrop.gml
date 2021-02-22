///CreateDrop(x,y,type,topscale,parent,colour,startingspeed,status,growrate)

X = argument0
Y = argument1
Type = argument2
TopScale = argument3
Parent = argument4
Colour = argument5
Speed = argument6
Status = argument7
GrowRate = argument8

if position_meeting(X,Y,mCreatureParent) {
ThisLiquid = instance_create(X,Y,Type)
ThisLiquid.WelledX = X
ThisLiquid.WelledY = Y
ThisLiquid.TopXScale = TopScale
ThisLiquid.TopYScale = TopScale
ThisLiquid.CurrentXScaleBase = 0
ThisLiquid.CurrentYScaleBase = 0
ThisLiquid.Parent = Parent
ThisLiquid.ReadyToGrow = true
ThisLiquid.Colour = Colour
ThisLiquid.image_blend = Colour
ThisLiquid.CurrentDirection = 270
ThisLiquid.CurrentSpeedBase = Speed
ThisLiquid.Status = Status
ThisLiquid.GrowToSizeRate = GrowRate
ThisLiquid.direction = 270
}

return ThisLiquid



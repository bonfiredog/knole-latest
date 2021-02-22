///DripFromWelling(wellingareaid)

//Find a drop that is welling from self, and make it drip.

if instance_exists(TypeOfLiquid) {
do 
{
TrickleLiquid = instance_find(TypeOfLiquid,irandom(instance_number(TypeOfLiquid) - 1))
} until TrickleLiquid.Status = "welling" and TrickleLiquid.Parent = self
TrickleLiquid.Status = "dripping"
MakeDripSound(TrickleLiquid.x,TrickleLiquid.y)
NumberPresent -= 1
}



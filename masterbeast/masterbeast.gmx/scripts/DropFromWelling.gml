///DropFromWelling()


//Find a droplet that is welling, and then make it drop.

if instance_exists(TypeOfLiquid) {
while CandidateLiquidFound = false {
TrickleLiquid = instance_find(TypeOfLiquid,irandom(instance_number(TypeOfLiquid) - 1))
if TrickleLiquid.Status = "welling" and TrickleLiquid.Parent = self.id {
CandidateLiquidFound = true 
}
}

TrickleLiquid.CurrentDirection = 270
TrickleLiquid.direction = 270
TrickleLiquid.image_angle = direction
TrickleLiquid.CurrentSpeedBase = 5
TrickleLiquid.speed = TrickleLiquid.CurrentSpeed
TrickleLiquid.Status = "trickling"
NumberPresent -= 1
CandidateLiquidFound = false
}


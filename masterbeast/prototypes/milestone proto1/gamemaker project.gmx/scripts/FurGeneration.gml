if FinishedGenerating = false {
if FursGenerated < TotalFursToGenerate {

RandomX = irandom_range(LeftEdge, RightEdge)
RandomY = irandom_range(TopEdge, BottomEdge)

if position_meeting(RandomX,RandomY,self) {

ThisFur = instance_create(RandomX,RandomY,TypeOfFur)
ThisFur.GeneratedValues = false
ThisFur.OriginalX = ThisFur.x
ThisFur.OriginalY = ThisFur.y

ThisFur.OwnerPlane = self
ThisFur.DepthDirection = choose(-1,1)
ThisFur.depth = global.GuardHairLayer + (random_range(0.1,0.4) * ThisFur.DepthDirection) 
ThisFur.RestingDirection = point_direction(ThisFur.x,ThisFur.y,ThisFur.OwnerPlane.CentrePoint.x,ThisFur.OwnerPlane.CentrePoint.y)
ThisFur.direction = ThisFur.RestingDirection
ThisFur.image_alpha = 1
ThisFur.image_angle = ThisFur.direction
if TypeOfFur = oFurBlockFur {
ThisFur.image_xscale = random_range(1.6,2)
} else {
ThisFur.image_xscale = random_range(1,1.5)
}
ThisFur.image_yscale = ThisFur.image_xscale
ThisFur.GeneratedValues = true
FursGenerated = FursGenerated + 1
}
} else if FursGenerated >= TotalFursToGenerate {
FinishedGenerating = true
}
}


if FinishedGenerating = false {
if BlemishesGenerated < TotalBlemishesToGenerate {

RandomX = irandom_range(LeftEdge, RightEdge)
RandomY = irandom_range(TopEdge, BottomEdge)

if position_meeting(RandomX,RandomY,self) {

ThisBlemish = instance_create(RandomX,RandomY,oBlemish)
ThisBlemish.GeneratedValues = false
ThisBlemish.OriginalX = ThisBlemish.x
ThisBlemish.OriginalY = ThisBlemish.y
ThisBlemish.OwnerPlane = self

ThisBlemish.depth = global.FacialFeatureLayerBase
ThisBlemish.direction = random(360)
ThisBlemish.image_alpha = 1
ThisBlemish.image_angle = ThisBlemish.direction
ThisBlemish.image_xscale = random_range(0.4,1)
ThisBlemish.image_yscale = ThisBlemish.image_xscale
ThisBlemish.GeneratedValues = true
BlemishesGenerated = BlemishesGenerated + 1
}

} else if BlemishesGenerated >= TotalBlemishesToGenerate {
FinishedGenerating = true
}
}



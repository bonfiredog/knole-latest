///Dropping

if Drop = true {
if State = "sitting" {
if DropTimer > 0 {
DropTimer -= 1
} else if DropTimer <= 0 {
StartStanding()
}
} else if State = "standing" {
ThisPile = instance_create(oShepherdBody.x,oShepherdBody.y,tPickUpPile)
ThisPile.Modifier = oShepherdBag.BagNumber
ThisPile.image_xscale = 0.4 * ThisPile.Modifier
ThisPile.image_yscale = 0.4 * ThisPile.Modifier
oShepherdBag.BagNumber = 0
StartQuickBagSwing("left",3)
Drop = false
}
}






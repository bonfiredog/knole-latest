if mCreatureController.MouthState = "Open" and PickedUp = true
and ((phy_position_y > oMouthEdgeNewTop.y) and (phy_position_y < oMouthEdgeNewBottom.y))
and !place_meeting(x,y,oMouthEdgeNewTop)
and !place_meeting(x,y,oMouthEdgeNewBottom)
{
depth = UnderSkinLayer1 - 0.1
TimeSinceEating = 0
Eaten = true
}

if Eaten = true {
if StuckInTaboo = false {
Digestible()

if phy_position_y >= (oTabooLayer.y - sprite_height) {
XMod = random_range(0,room_width)
YMod = random_range(oTabooLayer.y,(oTabooLayer.y + oTabooLayer.sprite_height))
depth = OffObjectsLayer
phy_rotation = random(360)
image_angle = -phy_rotation
image_alpha = 0
StuckInTaboo = true
}
}
}



if StuckInTaboo = true {

phy_position_x = XMod
phy_position_y = YMod

if TimeSinceEating < DigestionTime {
TimeSinceEating += 1
} else if TimeSinceEating >= DigestionTime {
image_alpha = 1
}

}

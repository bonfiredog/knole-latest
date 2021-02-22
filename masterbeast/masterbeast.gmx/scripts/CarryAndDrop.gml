if PickedUp = true
and place_meeting(phy_position_x,phy_position_y,mCursor)
and mouse_check_button(mb_middle)
and mCursor.ItemCarried = self.id
{
phy_position_x = mCursor.phy_position_x
phy_position_y = mCursor.phy_position_y
}

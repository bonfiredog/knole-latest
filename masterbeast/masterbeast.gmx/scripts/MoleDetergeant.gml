///MoleDetergeant()

if position_meeting(mouse_x,mouse_y,self)
and mInterfaceController.Healing = true
{
DetergeantTimer = 7200
DetergeantMod = 100
}

if DetergeantTimer > 0 {
DetergeantTimer -= 1
DetergeantMod = (100 / 7200) * DetergeantTimer
} else {
DetergeantTimer = 0
DetergeantMod = 0
}

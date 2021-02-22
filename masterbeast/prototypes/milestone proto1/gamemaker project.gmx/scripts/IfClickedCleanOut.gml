///IfClickedCleanOut(obj)

ThisDuct = argument0

if MouseContactWith(ThisDuct) and mouse_check_button_pressed(mb_left) {
if oGound.ParentDuct = ThisDuct {
with oGound {
DeleteOrPickUp = choose("delete","pickup")
if DeleteOrPickUp = "delete" {
instance_destroy()
} else if DeleteOrPickUp = "pickup" {
x = mouse_x
y = mouse_y
Picked = true
}
}
}
}






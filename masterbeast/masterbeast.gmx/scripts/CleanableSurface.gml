///CleanableSurface(surface,ifincontactwith,alphatoremove)

//Criteria for cleaning...
if mInterfaceController.Cleaning = true
{
//If in contact with correct object and pressing:
if position_meeting(mouse_x,mouse_y,argument1)
if mInterfaceController.PressBegun = true 
and mInterfaceController.DragBegun = true 
and mInterfaceController.DragSpeed > 3
{
if ex_audio_is_playing("clean") = false {
ex_audio_set_position("clean",mouse_x,mouse_y,0)
ex_audio_set_volume("clean",BothVolMod(0.7),0)
ex_audio_set_pitch("clean",random_range(0.5,0.6))
ex_audio_play("clean",1)
} else {
ex_audio_set_position("clean",mouse_x,mouse_y,0)
ex_audio_set_position("clean",mouse_x,mouse_y,0)
ex_audio_set_volume("clean",BothVolMod(0.7),0)
}
mCreatureController.Dirt -= 0.05

//For Taboos
if position_meeting(mouse_x,mouse_y,oTabooLayer1) {
oTabooLayer1.Health -= 0.01
} 
if position_meeting(mouse_x,mouse_y,oTabooLayer2) {
oTabooLayer2.Health -= 0.01
} 
if position_meeting(mouse_x,mouse_y,oTabooLayer3) {
oTabooLayer3.Health -= 0.01
} 


surface_set_target(argument0)
draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)
draw_sprite_ext(sWipe,0,mouse_x,mouse_y,0.45,0.45,point_direction(mouse_x,mouse_y,mInterfaceController.LastX,mInterfaceController.LastY),c_white,argument2)
draw_set_blend_mode(bm_normal)
surface_reset_target()
} else {
if ex_audio_is_playing("clean") {
ex_audio_stop("clean")
}
}
} else {
if ex_audio_is_playing("clean") {
ex_audio_stop("clean")
}
}

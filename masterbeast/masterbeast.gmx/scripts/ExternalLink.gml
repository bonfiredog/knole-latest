///ExternalLink(ButtonX, ButtonY, ButtonColour, ButtonAlpha, ButtonText, Link)

ButtonX = argument0
ButtonY = argument1
ButtonColour = argument2
ButtonAlpha = argument3
ButtonText = argument4
Link = argument5

ButtonBorder = instance_create((x - (sprite_width / 2) + ButtonX),(y - (sprite_height / 2) + ButtonY),mDebugButton)
ButtonBorder.image_alpha = ButtonAlpha
ButtonBorder.image_blend = ButtonColour


draw_set_font(fDebugSubtitle)
draw_set_colour(ButtonColour)
draw_set_alpha((ButtonAlpha * image_alpha))
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_text(ButtonX,ButtonY,ButtonText)

//If it is clicked, link to an external site.

if mouse_x > (ButtonBorder.x - (ButtonBorder.sprite_width / 2))
and mouse_x < (ButtonBorder.x + (ButtonBorder.sprite_width / 2))
and mouse_y > (ButtonBorder.y - (ButtonBorder.sprite_height / 2))
and mouse_y > (ButtonBorder.y + (ButtonBorder.sprite_height / 2))
and mouse_check_button_pressed(mb_any) {
url_open(Link)
}






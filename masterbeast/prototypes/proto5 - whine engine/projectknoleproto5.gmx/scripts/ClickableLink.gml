///ClickableLink(Text,Link)

Text = argument0
Link = argument1

ThisText = draw_text(posx,posy,Text)

MouseInBounds = (mouse_x <= ThisText.x) and
(mouse_x >= ThisText.x + string_width(Text)) and
(mouse_y >= ThisText.y) and 
(mouse_y <= ThisText.y + string_height(Text))

if MouseInBounds {
if mouse_check_button_pressed(mb_left) {
url_open(Link)
}
}










if mouse_x > ThisText.x and mouse_x < (ThisText.x + string_width(ThisText))
and mouse_y > ThisText.y and mouse_y < (ThisText.y + string_height(ThisText)) {

if mouse_check_button(vk_left) {

url_open(Link)

}
}

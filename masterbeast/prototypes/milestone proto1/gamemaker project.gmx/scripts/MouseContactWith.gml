///MouseContactWith(obj)

Object = argument0

if mouse_x > (Object.x - (Object.sprite_width / 2)) 
and mouse_x < (Object.x + (Object.sprite_width / 2)) 
and mouse_y > (Object.y - (Object.sprite_height / 2))
and mouse_y < (Object.y + (Object.sprite_height / 2))

{

return true

}


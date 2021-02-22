///DrawVoxTitle(TitleText,SubtitleText)

TitleText = argument0
SubtitleText = argument1

draw_set_halign(fa_left)
draw_set_alpha(1)
draw_set_font(fVoxTitle)
draw_set_color(c_red)

draw_text(posx,posy,TitleText)

UpdateTextY(30)

draw_set_font(fVoxSubtitle)
draw_set_color(c_black)

draw_text(posx,posy,SubtitleText)

UpdateTextY(20)

DrawLine(posx,posy,posx + string_width(SubtitleText),posy,c_red,1,0.5)




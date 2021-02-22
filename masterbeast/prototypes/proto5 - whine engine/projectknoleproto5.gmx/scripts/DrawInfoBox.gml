///DrawInfoBox

draw_set_halign(fa_right)
draw_set_alpha(1)
draw_set_font(fInfoBoxBig)
draw_set_color(c_red)

draw_text(posx,posy,"Project <knole> Prototype \#5")
UpdateTextY(20)
DrawLine(posx,posy,posx - string_width("Project <knole> Prototype \#5"),posy,c_red,1,0.5)
draw_set_font(fInfoBoxSmall)
UpdateTextY(30)
draw_set_colour(c_black)
draw_set_alpha(0.8)
draw_text(posx,posy,"A generative vocalisation engine#for fictional creatures.")
draw_set_alpha(1)
UpdateTextY(40)
draw_set_color(c_red)
ClickableLink("Website","http://bonfiredog.github.io/knole/")
UpdateTextY(20)
ClickableLink("Twitter","http://twitter.com/rob_sherman")

UpdateTextY(40)
DisplayFPS()
UpdateTextY(40)



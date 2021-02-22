///DrawRelativeTextDebugSurface(font,colour,alpha,halign,valign,string,relativewidthofline)

TextFont = argument0
TextColour = argument1
TextAlpha = argument2
TextHAlign = argument3
TextVAlign = argument4
String = argument5
RelativeWidthOfLine = argument6

draw_set_font(TextFont)
draw_set_colour(TextColour)
draw_set_alpha((TextAlpha * image_alpha))
draw_set_halign(TextHAlign)
draw_set_valign(TextVAlign)

draw_text_ext(TextX, TextY - DebugScrollOffset(), String, 20, RelativeWidthOfLine)

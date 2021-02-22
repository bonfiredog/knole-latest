///DebugMakeColumnBar(stat, statmax, column)

Stat = argument0
StatMax = argument1
Column = argument2

draw_set_colour(DebugBlackTextColour)
draw_set_alpha(0.7)

if Column = 1 {

StatPercentage = (Stat / StatMax) * 100
WidthOfLine = (Column1WidthSurface / 100) * StatPercentage
StatExtent = TextX + WidthOfLine

draw_line(TextX,TextY - DebugScrollOffset(),TextX,TextY - DebugScrollOffset() + 20)
draw_set_colour(DebugRedTextColour)
draw_line_width(TextX,TextY - DebugScrollOffset() + 10,StatExtent,TextY - DebugScrollOffset() + 10,5)
draw_set_colour(DebugBlackTextColour)
draw_line(TextX + 400,TextY - DebugScrollOffset(),TextX + 400,TextY - DebugScrollOffset() + 20)

} else if Column = 2 {

StatPercentage = (Stat / StatMax) * 100
WidthOfLine = (Column2WidthSurface/ 100) * StatPercentage
StatExtent = TextX + WidthOfLine

draw_line(TextX,TextY - DebugScrollOffset(),TextX,TextY - DebugScrollOffset() + 20)
draw_set_colour(DebugRedTextColour)
draw_line_width(TextX,TextY - DebugScrollOffset() + 10,StatExtent,TextY - DebugScrollOffset() + 10,5)
draw_set_colour(DebugBlackTextColour)
draw_line(TextX + 400,TextY - DebugScrollOffset(),TextX + 400,TextY - DebugScrollOffset() + 20)

}

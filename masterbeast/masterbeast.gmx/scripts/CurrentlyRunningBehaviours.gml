TopOfBox = TextY - DebugScrollOffset() - 20
TextX = TextX + 10
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_left,fa_center,"Currently Active Behaviours",Column1WidthSurface - 20)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX,TextY - DebugScrollOffset(),TextX + string_width("Currently Active Behaviours"),TextY - DebugScrollOffset())
TextY += 30
draw_set_font(fDebugWords)

count = 0
while count < array_length_1d(ActiveBehaviours) {
draw_text_ext(TextX,TextY - DebugScrollOffset(),ActiveBehaviours[count],20,Column1WidthSurface)
TextY += 15
count += 1
}
BottomOfBox = TextY - DebugScrollOffset() + 10
draw_rectangle(TextX - 10,TopOfBox, TextX + 400 - 50,BottomOfBox,true)
TextX = TextX - 10








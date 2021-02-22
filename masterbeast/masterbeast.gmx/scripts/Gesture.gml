///Gesture()

DrawTextRelativeDebugSurface(fDebugStatsBig,DebugRedTextColour, 0.7, fa_left,fa_center,"Gesture Test",Column1WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX,TextY - DebugScrollOffset(),TextX + string_width("Gesture Test"),TextY - DebugScrollOffset())
TextY += 30

draw_rectangle(TextX,TextY - DebugScrollOffset(), TextX + 400, TextY + 200 - DebugScrollOffset(),true)
TextY += 30
TextX += 200

DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Latest Mouse Action",Column1WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX - (string_width("Latest Mouse Action") / 2),TextY - DebugScrollOffset(),TextX + (string_width("Latest Mouse Action") / 2),TextY - DebugScrollOffset())
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,mInterfaceController.LatestMouseAction,Column1WidthSurface)

TextY += 60
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Latest Sigil",Column1WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX - (string_width("Latest Sigil") / 2),TextY - DebugScrollOffset(),TextX + (string_width("Latest Sigil") / 2),TextY - DebugScrollOffset())
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,mInterfaceController.LatestSigil,Column1WidthSurface)
TextX -= 200





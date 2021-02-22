///ColourBox2()

DrawTextRelativeDebugSurface(fDebugStatsBig,DebugRedTextColour, 0.7, fa_left,fa_center,"Colour Detector 2",Column2WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX,TextY - DebugScrollOffset(),TextX + string_width("Colour Detector 2"),TextY - DebugScrollOffset())
TextY += 30

draw_rectangle(TextX,TextY - DebugScrollOffset(), TextX + 400, TextY + 200 - DebugScrollOffset(),true)
TextY += 30
TextX += 200

DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Foreground: " + string(mCreatureController.CurrentColourForeground2),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Background: " + string(mCreatureController.CurrentColourBackground2),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Accent R: " + string(mCreatureController.CurrentColourAccentR2),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Accent G: " + string(mCreatureController.CurrentColourAccentG2),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Accent B: " + string(mCreatureController.CurrentColourAccentB2),Column2WidthSurface)

TextX -= 200

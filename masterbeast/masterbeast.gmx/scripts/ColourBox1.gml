///ColourBox1()

DrawTextRelativeDebugSurface(fDebugStatsBig,DebugRedTextColour, 0.7, fa_left,fa_center,"Colour Detector 1",Column2WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX,TextY - DebugScrollOffset(),TextX + string_width("Colour Detector 1"),TextY - DebugScrollOffset())
TextY += 30

draw_rectangle(TextX,TextY - DebugScrollOffset(), TextX + 400, TextY + 200 - DebugScrollOffset(),true)
TextY += 30
TextX += 200

DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Foreground: " + string(mCreatureController.CurrentColourForeground1),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Background: " + string(mCreatureController.CurrentColourBackground1),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Accent R: " + string(mCreatureController.CurrentColourAccentR1),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Accent G: " + string(mCreatureController.CurrentColourAccentG1),Column2WidthSurface)
TextY += 30
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Current Colour Accent B: " + string(mCreatureController.CurrentColourAccentB1),Column2WidthSurface)

TextX -= 200
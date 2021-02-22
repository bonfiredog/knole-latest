///EmotionBox()

DrawTextRelativeDebugSurface(fDebugStatsBig,DebugRedTextColour, 0.7, fa_left,fa_center,"OCR Result{",Column2WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX,TextY - DebugScrollOffset(),TextX + string_width("OCR Results"),TextY - DebugScrollOffset())
TextY += 30

draw_rectangle(TextX,TextY - DebugScrollOffset(), TextX + 400, TextY + 100 - DebugScrollOffset(),true)
TextY += 30
TextX += 200

DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,"Latest OCR Result: " + string(mCreatureController.OCRResult),Column2WidthSurface)
TextX -= 200


///ImageBox2()

DrawTextRelativeDebugSurface(fDebugStatsBig,DebugRedTextColour, 0.7, fa_left,fa_center,"Image Detector 2",Column2WidthSurface)
TextY += 15
draw_set_alpha(0.7)
draw_line(TextX,TextY - DebugScrollOffset(),TextX + string_width("Image Detector 2"),TextY - DebugScrollOffset())
TextY += 30

draw_rectangle(TextX,TextY - DebugScrollOffset(), TextX + 400, TextY + 200 - DebugScrollOffset(),true)
TextY += 75
TextX += 200

if ds_list_size(mCreatureController.CurrentVisionTags2) <= 1 {
TagString = "no tags currently."
} else {
TagString = ""
for (i = 0;i <= (ds_list_size(mCreatureController.CurrentVisionTags2) - 1); i++) {
if (i > 0) {
TagString = TagString + ", "
}
TagString = TagString + ds_list_find_value(mCreatureController.CurrentVisionTags2,i)
}
}

DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_center,fa_center,TagString,Column2WidthSurface)

TextX -= 200

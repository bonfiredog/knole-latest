switch mInterfaceController.NumberOfFingersOnScreen {
case 0:
DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7,fa_left,fa_center,"", Column1WidthSurface)
break;

case 1:
DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7,fa_left,fa_center,"One finger pres{ing.", Column1WidthSurface)
break;

case 2:
DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7,fa_left,fa_center,"Two finger{ pres{ing.", Column1WidthSurface)
break;

case 3:
DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7,fa_left,fa_center,"Three finger{ pres{ing.", Column1WidthSurface)
break;

case 4:
DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7,fa_left,fa_center,"Four finger{ pres{ing.", Column1WidthSurface)
break;

case 5:
DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7,fa_left,fa_center,"Whole hand pres{ing.", Column1WidthSurface)
break;
}

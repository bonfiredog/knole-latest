///CurrentBrew()

if (oCaulLiquid.CurrentBrewIngredients = "") {
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_left,fa_center,"No brew currently.",Column2WidthSurface)
TextY += 20
} else {
DrawTextRelativeDebugSurface(fDebugStats,DebugRedTextColour, 0.7, fa_left,fa_center,oCaulLiquid.CurrentBrewIngredients,Column2WidthSurface)
TextY += 20
}



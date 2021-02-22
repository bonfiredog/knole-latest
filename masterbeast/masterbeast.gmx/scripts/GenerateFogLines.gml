if ReadyToGenerate = true and mWorldController.ThisPeriodWT = 6  {
for (FogLine = 0; FogLine < FogNumberOfLines; FogLine += 1;) {
FogSpriteArray[FogLine] = choose(sMistLineShort,sMistLineMedium,sMistLineLong)
FogSideArray[FogLine] = choose(0, room_width)
FogScaleArray[FogLine] = random_range(1,5)
FogRateArray[FogLine] = random_range(1,10)
FogDirectionArray[FogLine] = choose(-1,1)
ReadyToGenerate = false
DrawingTime = true
}
}

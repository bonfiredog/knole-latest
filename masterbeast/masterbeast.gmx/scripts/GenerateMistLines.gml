if ReadyToGenerate = true and (mWorldController.ThisPeriodWT = 5 or mWeatherSubController.MorningMist = true){
for (MistLine = 0; MistLine < MistNumberOfLines; MistLine += 1;) {
MistSpriteArray[MistLine] = choose(sMistLineShort,sMistLineMedium,sMistLineLong)
MistSideArray[MistLine] = choose(0, room_width)
MistScaleArray[MistLine] = random_range(1,5)
MistRateArray[MistLine] = random_range(1,10)
MistDirectionArray[MistLine] = choose(-1,1)
ReadyToGenerate = false
DrawingTime = true
}
}

with oFogMistController {
MorningMistHeight = irandom_range(200,400)
MorningMasterTransLevel = 0
MorningNumberOfLines = round(MorningMistHeight / LineDistance)
BottomOfMorningMist = room_height
TopOfMorningMist = room_height - MorningMistHeight


//Creating The Lines
for (MistLine = 0; MistLine < MorningNumberOfLines; MistLine += 1;) {
MorningMistSpriteArray[MistLine] = choose(sMistLineShort,sMistLineMedium,sMistLineLong)
MorningMistSideArray[MistLine] = choose(0, room_width)
MorningMistScaleArray[MistLine] = random_range(1,5)
MorningMistRateArray[MistLine] = random_range(1,10)
MorningMistDirectionArray[MistLine] = choose(-1,1)
}

MorningMistReady = true
}

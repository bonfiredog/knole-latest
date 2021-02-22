///ResetFogMistRandomisers

oFogMistController.FogHeight = irandom_range(300,400)
oFogMistController.MistHeight = irandom_range(150,200)

oFogMistController.MasterTransLevel = 0

oFogMistController.FogNumberOfLines = round(oFogMistController.FogHeight / oFogMistController.LineDistance)
oFogMistController.MistNumberOfLines = round(oFogMistController.MistHeight / oFogMistController.LineDistance)

oFogMistController.BottomOfFogMist = room_height
oFogMistController.TopOfFog = room_height - oFogMistController.FogHeight
oFogMistController.TopOfMist = room_height = oFogMistController.MistHeight

oFogMistController.ReadyToGenerate = true
oFogMistController.DrawingTime = false



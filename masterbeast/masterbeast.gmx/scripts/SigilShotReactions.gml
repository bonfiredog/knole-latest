///SigilShotReactions

if mCreatureController.Triad > 0 {
ChangeEmotionStep("happy","up",0.1)
ChangeEmotionStep("sad","down",0.1)
ChangeEmotionStep("anger","down",0.1)
ChangeEmotionStep("fear","down",0.1)
ChangeEmotionStep("shame","down",0.1)
} else {
ChangeEmotionStep("happy","down",0.1)
ChangeEmotionStep("sad","up",0.1)
ChangeEmotionStep("anger","up",0.1 + ((0.2 / 100) * mCreatureController.Resistance))
ChangeEmotionStep("fear","up",0.1)
ChangeEmotionStep("shame","up",0.1)
}


///LittleJump()

if mInterfaceController.Jumping = false {
mInterfaceController.Jumping = true
mInterfaceController.JumpAmount = irandom_range(40,70) - ((7 / 100) * (100 - mCreatureController.Alive)) + ((20 / 100) * mEmotionSubController.FearActivation) + (40 * mBehavioursDeliberative.NoddingActive)
mInterfaceController.JumpDir = "up"
WriteToLog("Gave a little jump.")
}

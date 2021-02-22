///StartSlipBehaviour()

with mBehavioursReactive {
WriteToLog("Slipped down.")
SlippingActive = true 
SlipAmount = irandom_range(500,900)
SlipRate = irandom_range(75,90)
FinishedSlip = false
ReturnRate = 100 + ((60 / 100) * (100 - mCreatureController.Alive))
ReturnTimer = 0
}


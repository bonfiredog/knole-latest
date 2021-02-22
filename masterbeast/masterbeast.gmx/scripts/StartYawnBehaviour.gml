///StartYawnBehaviour()

with mBehavioursReactive {
WriteToLog("Started yawning.")
YawningActive = true
YawningEyes = choose("squint","shut")
YawningRate = irandom_range(0.03,10.1) + ((3 / 100) * mCreatureController.Tiredness)
YawningHold = irandom_range(40,80) + ((10 / 100) * mCreatureController.Tiredness)
YawningTime = irandom_range(30,40) + ((20 / 100) * mCreatureController.Tiredness)
YawnBlinkNumber = irandom_range(0,3)
StoppingYawning = false
StartedYawn = false
}

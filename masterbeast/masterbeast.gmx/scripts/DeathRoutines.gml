///DeathRoutines

if CreatureDied = false {
if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForwardUnCapped("comeforward",60,100)
} else {
if mInterfaceController.CurrentView = MicroView {
StartZoom(200,room_width/2,1000 + (view_hport[0] / 2))
} else {
MoveToXY(0,1000,200,MacroView,50)
}
}
ChanceToWake(100)
VocaliseChance(100)
CurrentlyBlinking = true
CreatureDied = true
} else if CreatureDied = true {
if CreatureSuperDied = false {
if NumberOfDeathBlinks > 0 and mBehavioursReactive.BlinkingActive = false {
StartBlinkBehaviour()
NumberOfDeathBlinks -= 1
}

if NumberOfDeathTwitches > 0 {
RandomTwitch()
NumberOfDeathTwitches -= 1
}
StartCaulVibrateBehaviour(100)

if NumberOfDeathBlinks <= 0 and NumberOfDeathTwitches <= 0 {
StartShiverBehaviour(4,40,6)
CurrentlyBlinking = false
CurrentlyWinking = false
CurrentlySquinting = false
StartCloseEyeBehaviour("both",0)
if mBehavioursReactive.BreathingActive = true {
FinishBreatheBehaviour()
}
CreatureSuperDied = true
}
}
} 
  





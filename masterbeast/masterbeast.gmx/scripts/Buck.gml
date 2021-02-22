///Buck()

if Bucking = true {
if BuckMovedOut = false {
//Move Out To Middle Of Forehead
MoveToXY(mNoseCentre.x,mNoseCentre.y,irandom_range(20,30),MacroView,irandom_range(30,50))
BuckMovedOut = true
} else if BuckMovedOut = true {
if Bucked = false {
if BMOPause > 0 {
BMOPause -= 1
} else {
EyeSquint(irandom_range(1,3),true,irandom_range(40,50))
StartZoom(10,mNoseCentre.x,mNoseCentre.y)
Bucked = true
} 
} else if Bucked = true {
if mInterfaceController.CurrentView = MicroView {
StartScreenShake(irandom_range(40,70),20,0.5)
StartBlinkBehaviour()
StartZoom(25,mNoseCentre.x,mNoseCentre.y)
CauseBruise(612 + irandom_range(-50,50), 1197 + irandom_range(-50,50),irandom_range(0.4,0.7))
Bucking = false
}
}
}
}


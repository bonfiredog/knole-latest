///StartBuck()

with mBehavioursDeliberative {
if Bucking = false {   
if PercentForward < 100 {
MoveBackForward("comeforward",20,(100 - PercentForward))
BuckingAfter = true 
} else { 
Bucking = true
BuckMovedOut = false
BMOPause = irandom_range(10,20)
Bucked = false
}
}
}

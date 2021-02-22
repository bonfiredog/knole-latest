///RandomMoveAbout
if mCreatureController.Faces = "0" and mInterfaceController.PressBegun = false 
and mInterfaceController.HeardSound = false and mInterfaceController.HeardLoudSound = false
and mCreatureController.MotionDetected1 = false and mCreatureController.MotionDetected2 = false
{
if RandomMoveTimer > 0 {
RandomMoveTimer -= 1
} else if RandomMoveTimer <= 0 {
Move = choose("retreatorforward","move")
if Move = "retreatorforward" {
if mBehavioursDeliberative.PercentForward >= 100 {
MoveBackForward("retreat",irandom_range(20,50),irandom_range(5,10))
} else if mBehavioursDeliberative.PercentForward <= 0 {
MoveBackForward("comeforward",irandom_range(20,50),irandom_range(5,10))
} else {
MoveBackForward(choose("retreat","comeforward"),irandom_range(20,50),irandom_range(5,10))
}
} else if Move = "move" {
MoveXStart = view_xview[mInterfaceController.CurrentViewNumber] + (view_wview[mInterfaceController.CurrentViewNumber] / 2)
MoveYStart = view_yview[mInterfaceController.CurrentViewNumber] + (view_hview[mInterfaceController.CurrentViewNumber] / 2)
Dir = random(360)
Len = irandom_range(10,150)
NewX = MoveXStart + lengthdir_x(Len,Dir)
NewY = MoveYStart + lengthdir_y(Len,Dir)
MoveToXY(NewX,NewY,irandom_range(20,50),false,0)
}
RandomMoveTimer = irandom_range(2000,4000) + ((1000 / 100) * mCreatureController.Tiredness)
+ ((1000 / 100) * mCreatureController.Alive)
}
}

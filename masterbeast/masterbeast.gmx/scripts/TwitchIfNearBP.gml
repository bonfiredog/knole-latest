///TwitchIfNearBP(x,y,dist)

if point_distance(argument0,argument1,oNose1.x,oNose1.y) < argument2 {
StartTwitchNoseSideBehaviour(20)
}

if point_distance(argument0,argument1,oBrowLeft.x,oBrowLeft.y) < argument2 {
StartEyebrowTwitchLeftBehaviour()
}

if point_distance(argument0,argument1,oBrowRight.x,oBrowRight.y) < argument2 {
StartEyebrowTwitchRightBehaviour()
}

if point_distance(argument0,argument1,oCheekLeft.x,oCheekLeft.y) < argument2 {
StartCheekTwitchLeftBehaviour()
}

if point_distance(argument0,argument1,oCheekRight.x,oCheekRight.y) < argument2 {
StartCheekTwitchRightBehaviour()
}

if point_distance(argument0,argument1,oEyeballLeft.x,oEyeballLeft.y) < argument2 {
StartWinkBehaviour("left")
}

if point_distance(argument0,argument1,oEyeballRight.x,oEyeballRight.y) < argument2 {
StartWinkBehaviour("right")
}

if point_distance(argument0,argument1,oMouthCentre.x,oMouthCentre.y) < argument2 {
StartMouthCentreTwitchBehaviour(0.03,random_range(0.03,0.13))
}

if point_distance(argument0,argument1,oMouthLeft.x,oMouthLeft.y) < argument2 {
StartMouthSideLeftTwitchBehaviour(choose("up","down"))
}

if point_distance(argument0,argument1,oMouthRight.x,oMouthRight.y) < argument2 {
StartMouthSideRightTwitchBehaviour(choose("up","down"))
}

if point_distance(argument0,argument1,oCaulJug.x,oCaulJug.y) < argument2 {
ShakeCaul(1,irandom_range(2,4))
}

if point_distance(argument0,argument1,oCaulNub.x,oCaulNub.y) < argument2 {
StartCaulVibrateBehaviour(40)
}

if point_distance(argument0,argument1,oCellarBase.x,oCellarBase.y) < argument2
{
LittleJump()
}


{
StartMouthSideLeftTwitchBehaviour(choose("up","down"))
}


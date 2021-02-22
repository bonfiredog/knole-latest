///CellarProximityReactions()

if DrivesAreOn() {
if IsAlive() and PickedUp = true and Rooted = false and IsInRitual() = false {

if IsAsleep() = false {
TwitchIfNearBP(x,y,50)
}

if point_distance(x,y,oEyeballLeft.x,oEyeballLeft.y) < 500 or point_distance(x,y,oEyeballRight.x,oEyeballRight.y) < 500 
and IsAsleep() = false and AmountForward(60) and EyesNotClosed() and Seen()
{
if mDriveCollectionMaster.CellarProxTimer <= 0 {
LittleJump()
StopShiverBehaviour()
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
ChangeEmotion("surprise","up",0.4,40)
HoldBreathFor(30)
ShiftAway(x,y,irandom_range(20,30),random(360))
CellarProxTimer = 3000 + NumberISMod(Tiredness,1000) + LowAliveMod(1000) 
} else {
CellarProxTimer = 3000 + NumberISMod(Tiredness,1000) + LowAliveMod(1000)
}
if Chance(0.01){EyeSquint(irandom_range(0,3),true,irandom_range(20,45))}
if Chance(0.01){NumberOfBlinks(irandom_range(20,46))}

if Chance(0.01){RandomShake()}
mCreatureController.BaseStress += 0.5
mDriveCollectionMaster.BaseBreathRate += 0.05
mCreatureController.BaseSubIntent -= 0.05
ChangeEmotionStep("happy","down",0.5)
ChangeEmotionStep("anger","up",0.5)
ChangeEmotionStep("fear","up",0.5)
ChangeEmotionStep("shame","up",0.5)
mCreatureController.BaseResistance -= 0.5
}

//Ears
if point_distance(x,y,oEarLeft.x,oEarLeft.y) < 100 or point_distance(x,y,oEarRight.x,oEarRight.y) < 100 
and AmountForward(60)
{
ChanceToWake(0.1)
if mDriveCollectionMaster.CellarProxTimer <= 0 {
LittleJump()
StopShiverBehaviour()
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
ChangeEmotion("surprise","up",0.4,40)
HoldBreathFor(30)
ShiftAway(x,y,irandom_range(20,30),random(360))
CellarProxTimer = 3000 + NumberISMod(Tiredness,1000) + LowAliveMod(1000) 
} else {
CellarProxTimer = 3000 + NumberISMod(Tiredness,1000) + LowAliveMod(1000)
}

if Chance(0.01){RandomShake()}
mCreatureController.BaseStress += 0.5
mDriveCollectionMaster.BaseBreathRate += 0.05
mCreatureController.BaseSubIntent -= 0.05
ChangeEmotionStep("happy","down",0.5)
ChangeEmotionStep("anger","up",0.5)
ChangeEmotionStep("fear","up",0.5)
ChangeEmotionStep("shame","up",0.5)
mCreatureController.BaseResistance -= 0.5
}

//Nose
if distance_to_object(oNose1) < 30
and AmountForward(60) {
ChanceToWake(0.1)
if mDriveCollectionMaster.CellarProxTimer <= 0 {
LittleJump()
StopShiverBehaviour()
StopYawnBehaviour()
StopMoveInOut()
StopXYMove()
StopVocalisation()
ChangeEmotion("surprise","up",0.4,40)
HoldBreathFor(30)
ShiftAway(x,y,irandom_range(20,30),random(360))
CellarProxTimer = 3000 + NumberISMod(Tiredness,1000) + LowAliveMod(1000) 
} else {
CellarProxTimer = 3000 + NumberISMod(Tiredness,1000) + LowAliveMod(1000)
}
if Chance(0.01){StartNumberSniffsBehaviour(irandom_range(1,3))}
if Chance(0.01){StartTwitchBehaviour(30,30,2)}
if Chance(0.01){StartTwitchNoseSideBehaviour(irandom_range(20,50))}

if Chance(0.01){RandomShake()}
mCreatureController.BaseStress += 0.5
mDriveCollectionMaster.BaseBreathRate += 0.05
mCreatureController.BaseSubIntent -= 0.05
ChangeEmotionStep("happy","down",0.5)
ChangeEmotionStep("anger","up",0.5)
ChangeEmotionStep("fear","up",0.5)
ChangeEmotionStep("shame","up",0.5)
mCreatureController.BaseResistance -= 0.5
}
}
}

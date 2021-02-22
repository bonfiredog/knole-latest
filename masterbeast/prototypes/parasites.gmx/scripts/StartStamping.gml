///StartStamping(numberofstamps,speed)

with oShepherdParent {
StartQuickBagSwing("left",3)

CrookState = "stamping"
NumberOfStamps = round(argument0 + ((2 / 100) * AlertLevel))
StampSpeed = argument1 + ((5 / 100) * AlertLevel)
StampDirection = "up"
StartStamp = false
}

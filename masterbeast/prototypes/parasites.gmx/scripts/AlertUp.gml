///AlertUp(amount)

with oShepherdParent {
if State != "sleeping" {
if tController.Temperature = "cold" {
ColdF = 0.5
} else {
ColdF = 1
}

AlertLevel += (argument0 * ColdF)

CallOrNot = choose(-1,1)
if CallOrNot = 1 {
Call()
}


TBF = choose(-1,1,2)
if TBF = 1 {
TurnBackAndForth(irandom_range(3,5),irandom_range(2,3))
} else if TBF = -1 {
StartShaking(irandom_range(50,80),5)
} else if TBF = 2 {
StartStamping(irandom_range(3,5),5)
}
}
}

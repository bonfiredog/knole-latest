///TurnBackAndForth(number,speed)

if State = "standing" {
State = "turnbackandforth"
TurnNumber = argument0
TurnTimer = 60
TurnSpeed = argument1 + ((2 / 100) * AlertLevel)
if CurrentHeading > 270 or CurrentHeading < 90 {
TurnDir = 0
} else {
TurnDir = 180
}
}

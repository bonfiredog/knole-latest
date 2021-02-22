///PickingUp

if PUp = true {
if instance_exists(tPickup) {
if PUSitting = false {
StartSitting()
PUSitting = true
} else if PUSitting = true {
if PUCountdown > 0 {
PUCountdown -= 1 
} else if PUCountdown <= 0 {
if PUStanding = false {
with Target {
instance_destroy()
}
oShepherdBag.BagNumber += 1
StartStanding()
StartQuickBagSwing("right",4)
PUStanding = true
} else if PUStanding = true {
Target = noone
PUSitting = false
PUCountdown = 60
PUStanding = false
PUp = false
}
}
}
} else {
Target = noone
PUSitting = false
PUCountdown = 60
PUStanding = false
PUp = false
}
} else {
Target = noone
PUSitting = false
PUCountdown = 60
PUStanding = false
PUp = false 
}






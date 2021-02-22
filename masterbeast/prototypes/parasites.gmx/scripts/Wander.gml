///Wander()

if Paused = false {
if WanderTimer > 0 {
WanderTimer -= 1
} else {
Paused = true 
PauseTimer = irandom_range(40,200)
}
} else if Paused = true {
if PauseTimer > 0 {
PauseTimer -= 1 
} else {
Paused = false 
PauseTimer = 0
WanderTimer = irandom_range(500,800)
direction = random(360)
}
}

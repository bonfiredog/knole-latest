///MoleHerd()

if GeneralGrazeTimer > 0 {
GeneralGrazeTimer -= 1
} else {
State = "wandering"
CurrentlyHunting = "moles"
GeneralWanderTimer = irandom_range(2000,10000)
GeneralGrazeTimer = 0
}

if GeneralWanderTimer > 0 {
GeneralWanderTimer -= 1
} else {
State = "grazing"
GeneralGrazeTimer = irandom_range(1000,5000)
GeneralWanderTimer = 0
}


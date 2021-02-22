///StartMouthCentreTwitchBehaviour(speed,amount)

with mBehavioursReactive {
if MCTwitchActive = false {
MCTwitchActive = true
MCTwitchSpeed = argument0
MCTwitchAmount = argument1
MCTwitchDir = "out"
}
}

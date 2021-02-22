///StartShaking(duration,speed)

with oShepherdParent {
StartQuickBagSwing("left",3)

CrookState = "shaking"
CrookShakeTime = argument0
ShakeSpeed = argument1 + ((5/100) * AlertLevel)
StartShake = false
}

///StartJabbing(number,speed)

with oShepherdParent {

StartQuickBagSwing("left",3)

CrookState = "jabbing"
NumberOfJabs = round(argument0 + ((2 / 100) * AlertLevel))
JabSpeed = argument1 + ((5 / 100) * AlertLevel)
JabDirection = "out"
StartJab = false

}

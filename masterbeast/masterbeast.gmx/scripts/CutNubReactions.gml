///CutNubReactions()

if DrivesAreOn() {
CreateParticleSplash(mouse_x,mouse_y,3,ps_shape_ellipse,ps_distr_gaussian,BloodLiquidColour,10,40,0.3,0.5,0,360,40,70,0.02,80)
CreateStain(80,0,360,10,30,0.2,0.2,0.4,0.1,0.15,BloodLiquidColour,mouse_x,mouse_y)
StartCloseEyeBehaviour("both",0)
if Chance(80) {
StartSlipBehaviour()
}
LittleJump()
ChangeEmotion("anger","up",0.8,50)
ChangeEmotion("happy","down",0.8,50)
ChangeEmotion("sad","up",0.8,50)
ChangeEmotion("fear","up",0.8,50)
ChangeEmotion("surprise","up",0.3,40 + (30 * mCreatureController.Triad))
ChanceToWake(100)
ShakeCaul(3,0.3)

with mCreatureController {
BaseTiredness += 25
BaseAlive -= 5
BaseLust -= 30
BaseResistance -= 30
BasePain += 30
BaseTrust -= 30
SubIntent -= 0.7
CloseToAnne += 10
}


VocaliseChance(100)
ShiverChance(70)

MoveBackForwardUnCapped("retreat",30,60)

mDriveCollectionMaster.CaulCutTimer = irandom_range(5000,10000)

}






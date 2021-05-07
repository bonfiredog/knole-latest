///CutNubReactions()

if mDriveCollectionMaster.RealReactionsOn = true {
CreateParticleSplash(mouse_x,mouse_y,3,ps_shape_ellipse,ps_distr_gaussian,BloodLiquidColour,10,40,0.3,0.5,0,360,40,70,0.02,80)
CreateStain(80,0,360,10,30,0.2,0.2,0.4,0.1,0.15,BloodLiquidColour,mouse_x,mouse_y)
StartCloseEyeBehaviour("both",0)
ReduceTabooLayerHealth(5)
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

if Chance(40) {WinkRun(irandom_range(2,6))}
with mCreatureController {
BaseTiredness += 25 * mPlotController.ISModifier
BaseAlive -= 5  * mPlotController.ISModifier
BaseLust -= 30 * mPlotController.ISModifier
BaseResistance -= 30 * mPlotController.ISModifier
BasePain += 30 * mPlotController.ISModifier
BaseTrust -= 30 * mPlotController.ISModifier
BaseSubIntent -= 0.7 * mPlotController.ISModifier
CloseToAnne += 10 * mPlotController.ISModifier
}


VocaliseChance(100)
ShiverChance(70)

MoveBackForwardUnCapped("retreat",30,60)

mDriveCollectionMaster.CaulCutTimer = irandom_range(5000,10000)
mDriveCollectionMaster.alarm[1] = 60
}






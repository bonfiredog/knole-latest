///TryingToGoDownReactions(tabooobject)

if mDriveCollectionMaster.RealReactionsOn = true {
StartScreenShake(60,30,2)
EyeSquint(3,true,60)
with mCreatureController {
BaseLust -= 0.1 * mPlotController.ISModifier
BaseTiredness += 0.1 * mPlotController.ISModifier
BasePain += 0.1 * mPlotController.ISModifier
BaseStress += 0.1 * mPlotController.ISModifier
BaseAlive -= 0.03 * mPlotController.ISModifier
BaseSubIntent -= 0.00003 * mPlotController.ISModifier
CloseToAnne += 0.1 * mPlotController.ISModifier
mDriveCollectionMaster.BaseBreathRate += 0.00001
VocaliseChance(3)
BaseTrust -= 0.1 * mPlotController.ISModifier
BaseResistance += 0.1
ChangeEmotionStep("happy","down",0.2)
if Triad >= 0 {
ChangeEmotionStep("sad","up",0.2)
} else {
ChangeEmotionStep("fear","up",0.2)
}
if Resistance > 40 {
ChangeEmotionStep("anger","up",0.2)
}
ChangeEmotionStep("shame","up",0.2)

if IsInRitual() = false {
if Chance(0.7 - (0.03 * Triad) - (0.02 / 100) * (100 - argument0.Health)){
mInterfaceController.CurrentHandUse = "none"
Choice = irandom_range(1,3)
switch Choice {
case 1:
LittleJump()
break;
case 2:
StartBuck()
break;
case 3:
MoveBackForward("retreat",30,irandom_range(5,10) - (3 * Triad))
break;
}
}
}
}
}

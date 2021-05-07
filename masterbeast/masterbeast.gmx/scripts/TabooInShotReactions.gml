///TabooInShotReactions()
if mDriveCollectionMaster.RealReactionsOn = true and mInterfaceController.Healing = false {
if PlayerViewOverObject(mTabooParent) and mInterfaceController.CurrentView = MicroView and mDriveCollectionMaster.Dozing = false and IsAsleep() = false and mCreatureController.Alive > 20 and IsInRitual() = false{

mDriveCollectionMaster.TabooShotTimer += 1


if instance_exists(oEarLeft) and PlayerViewOverObject(oEarLeft) {
oEarLeft.BaseRedness += 0.002
}

if instance_exists(oEarRight) and PlayerViewOverObject(oEarRight) {
oEarRight.BaseRedness += 0.002
}

if PlayerViewOverObject(oEyeballLeft) {
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)){StartWinkBehaviour("left")}
}

if PlayerViewOverObject(oEyeballRight) {
if Chance(0.001 + ((0.002 / 1000) * mDriveCollectionMaster.EyeShotTimer)){StartWinkBehaviour("right")}
}

if PlayerViewOverObject(oBottomHeadDrip) {
ChangeEmotionStep("shame","up",0.01)
mCreatureController.BaseLust += 0.005  * mPlotController.ISModifier
}

if PlayerViewOverObject(mCaulParent) {
mCreatureController.BaseLust += 0.07  * mPlotController.ISModifier
ChangeEmotionStep("shame","up",0.01)
if Chance(0.01 + ((0.02 / 1000) * mDriveCollectionMaster.TabooShotTimer)){
ShakeCaul(10,20)
}
if Chance(0.01 + ((0.02 / 1000) * mDriveCollectionMaster.TabooShotTimer)){
StartCaulVibrateBehaviour(irandom_range(40,200))
}
}

if mDriveCollectionMaster.TabooShotTimer > (300 + (100 * mCreatureController.Triad)) or mDriveCollectionMaster.TabooShotTimer > 900 {
mDriveCollectionMaster.BaseBreathRate += 0.000001

if Chance(0.01 + ((0.02 / 1000) * mDriveCollectionMaster.TabooShotTimer)){
Selector = irandom_range(1,10)

switch Selector {
case 1:
NumberOfBlinks(irandom_range(3,5) + ((NumberEmoMod(FearActivation,3))))
break;
case 2:
EmotionRequest()
break;
case 3:
StartEyebrowTwitchRightBehaviour()
break;
case 4:
EyeSquint(2,true,15)
break;
case 5:
StartEyebrowTwitchLeftBehaviour()
break;
case 6:
RandomShake()
break;
case 7:
RandomVoc(0.5)
break;
case 8:
ShakeCaul(10,20)
break;
case 9:
ShiftAway(view_xview[mInterfaceController.CurrentView] + view_wview[mInterfaceController.CurrentView],view_yview[mInterfaceController.CurrentView] + view_hview[mInterfaceController.CurrentView],irandom_range(60,150),random(360))
break;
case 10:
StartSwallowBehaviour(10,60)
break;
}
}




if mCreatureController.Triad > 0 {
ChangeEmotionStep("fear","up",0.005 )
ChangeEmotionStep("anger","down",0.005)
ChangeEmotionStep("sad","down",0.005)
ChangeEmotionStep("shame","down",0.005)
mCreatureController.BaseStress += 0.005 * mDriveCollectionMaster.ISModifier
ChangeEmotionStep("shame","up",0.005)
} else {
ChangeEmotionStep("fear","up",0.005)
ChangeEmotionStep("happy","down",0.005)
if mCreatureController.BaseResistance < 50 {
ChangeEmotionStep("anger","down",0.005)
ChangeEmotionStep("fear","up",0.005)
} else {
ChangeEmotionStep("anger","up",0.005)
}
if mEmotionSubController.FearActivation < 40 {
mCreatureController.BaseResistance += 0.005 * mPlotController.ISModifier
}
mCreatureController.BaseStress += 0.005 * mPlotController.ISModifier
mCreatureController.BaseTrust -= 0.004 * mPlotController.ISModifier
mCreatureController.BaseSubIntent -= 0.00004 * mPlotController.ISModifier
}
}
} else {
with mDriveCollectionMaster {
if TabooShotTimer > 0 {
TabooShotTimer -= 1
}
}
}


mDriveCollectionMaster.TabooShotTimer = clamp(mDriveCollectionMaster.TabooShotTimer,0,10000)
}

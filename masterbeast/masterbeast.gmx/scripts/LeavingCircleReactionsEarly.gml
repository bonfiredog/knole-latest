///LeavingCircleReactionsEarly()

with mCreatureController {
BaseLust += 10 * mDriveCollectionMaster.ISModifier
BaseStress += 10 * mDriveCollectionMaster.ISModifier
CloseToAnne -= 5 * mDriveCollectionMaster.ISModifier
ChangeEmotion("surprise","up",0.3,40)
LittleJump()
TwitchRun(15)
VocaliseChance(60)
EyeSquint(1,true,120)
if Chance(60){StartNumberSniffsBehaviour(3)}
MoveBackForward("comeforward",MoveSpeedCalc(),100 - mBehavioursDeliberative.PercentForward)

if Triad > 0 {
ChangeEmotion("happy","down",0.3,15)
ChangeEmotion("fear","up",0.3,15)
ChangeEmotion("sad","up",0.3,15)
ChangeEmotion("shame","up",0.3,15)
RandomShake()

} else {
ChangeEmotion("happy","up",0.3,15)
ChangeEmotion("fear","down",0.3,15)
ChangeEmotion("sad","down",0.3,15)
ChangeEmotion("shame","down",0.3,15)
if Chance(60) {Buck()}
}
}

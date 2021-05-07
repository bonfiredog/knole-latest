///RitualCommandAccept()

with mCreatureController {
CloseToAnne += 2  * mPlotController.ISModifier
TwitchRun(irandom_range(5,10))
NodUpDown(2)
VocaliseChance(100)


if mBehavioursDeliberative.PercentForward < 100 {
MoveBackForward("comeforward",40,100 - mBehavioursDeliberative.PercentForward)
}
}

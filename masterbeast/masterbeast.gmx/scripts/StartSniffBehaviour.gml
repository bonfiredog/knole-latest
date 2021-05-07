///StartSniffBehaviour(rateup,ratedown,duration,intensity)

if mCreatureController.Alive > 0 
and mBehavioursReactive.SniffingActive = false
and mBehavioursReactive.SneezeActive = false
{
with mBehavioursReactive {
WriteToLog("Started sniffing.")
SniffingActive = true
SniffIntensity = argument3
SniffDuration = argument2
SniffRateUp = argument0
SniffRateDown = argument1
SniffingMod = 0
SniffInComplete = false
SniffComplete = false
SniffOutComplete = false
SniffSoundStarted = false
}
}

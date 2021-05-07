///EODReactions()

if IsInRitual() {
RitualGoodReaction(0)
TwitchRun(20)
} else {
TwitchRun(20)
NodUpDown(3)
if Chance(30) {VocaliseChance(100)}
ChangeEmotion("happy","up",0.3,30)
ChangeEmotion("anger","down",0.3,10)
ChangeEmotion("fear","down",0.3,10)
}

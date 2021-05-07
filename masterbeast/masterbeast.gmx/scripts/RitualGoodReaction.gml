///RitualGoodReaction(0 is normal, 1 is intense)
argument0 = clamp(argument0,0,2)
with mCreatureController {
if IsInRitual() {
BaseLust += 1 + (5 * argument0)
BaseTiredness += 1 + (5 * argument0)
CloseToAnne += 3 + (5 * argument0)
BaseSubIntent += 2 + (5 * argument0)
BaseTrust += 3 + (5 * argument0)
BaseResistance -= 3 + (5 * argument0)
ChangeEmotion("happy","up",0.3,10 + (10 * argument0))
ChangeEmotion("anger","down",0.3,10 + (10 * argument0))
ChangeEmotion("shame","down",0.3,10 + (10 * argument0))
ChangeEmotion("sadness","down",0.3,10 + (10 * argument0))
ChangeEmotion("fear","down",0.3,10 + (10 * argument0))
if Chance(60 + (20 * argument0)){TwitchRun(irandom_range(5,10))}
NodUpDown(2 + (4 * argument0))
} else {
NodUpDown(irandom_range(2,4))
if Chance(60 + (20 * argument0)){TwitchRun(irandom_range(5,10))}
VocaliseChance(25 + (25 * argument0))
BaseLust += 1 + (5 * argument0)
BaseTiredness += 1 + (5 * argument0)
CloseToAnne += 3 + (5 * argument0)
BaseSubIntent += 2 + (5 * argument0)
BaseTrust += 3 + (5 * argument0)
BaseResistance -= 3 + (5 * argument0)
ChangeEmotion("happy","up",0.5,10 + (10 * argument0))
ChangeEmotion("anger","down",0.5,10 + (10 * argument0))
ChangeEmotion("shame","down",0.5,10 + (10 * argument0))
ChangeEmotion("sadness","down",0.5,10 + (10 * argument0))
ChangeEmotion("fear","down",0.5,10 + (10 * argument0))
}
}

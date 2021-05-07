///RitualBadReaction(degree (0 is normal, 1 is intense))

with mCreatureController {
if IsInRitual() {
BaseLust -= 1 + (5 * argument0)
BaseTiredness += 1 + (5 * argument0)
BaseStress += 3 + (5 * argument0)
CloseToAnne += 3 + (5 * argument0)
BaseResistance -= 3 + (5 * argument0)
if Chance(60 + (10 * argument0)){TwitchRun(irandom_range(5,10))}
ChangeEmotion("happy","up",0.3,20 + (10 * argument0))
ChangeEmotion("shame","up",3,30 + (10 * argument0))
ChangeEmotion("sadness","up",3,30 + (10 * argument0))
ChangeEmotion("fear","up",3,30 + (10 * argument0))
NodUpDown(2 + (5 * argument0))
} else {
if Chance(60 + (20 * argument0)){TwitchRun(irandom_range(5,10))}
if Chance(80 + (20 * argument0)){RandomShake()}
if Chance(60 + (20 * argument0)){LittleJump()}
if IsInRitual() = false {
if Chance(45 + (20 * argument0)){MoveBackForward("retreat",30,irandom_range(5,15))}
}
if Chance(60 + (20 * argument0)){RandomVoc(0.9)}else{StartSwallowBehaviour(3,15)}
if Chance(60 + (20 * argument0)){StartNumberSniffsBehaviour(irandom_range(1,3))}
BaseLust -= 1 + (5 * argument0)
CloseToAnne -= 5 + (5 * argument0)
BaseResistance -= 5 + (5 * argument0)
BaseStress += 5 + (5 * argument0)
BaseTrust -= 5 + (5 * argument0)
ChangeEmotion("happy","down",0.3,10 + (10 * argument0))
ChangeEmotion("shame","up",0.3,10 + (10 * argument0))
ChangeEmotion("sad","up",0.3,10 + (10 * argument0))
ChangeEmotion("fear","up",0.3,10 + (10 * argument0))
if Resistance > 40 {
ChangeEmotion("anger","up",0.3,10 + (10 * argument0))
}
}
} 

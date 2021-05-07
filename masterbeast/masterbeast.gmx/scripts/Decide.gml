///Decide(goodorbad,intensity)

if IsInRitual() {
if argument0 = "good" {
RitualGoodReaction(argument1)
} else if argument0 = "bad" {
RitualBadReaction(argument1)
}
RitualCommandAccept()
return true
} else {
DecideOrNot = 
(mCreatureController.Triad * 100) 
- mCreatureController.Tiredness 
+ mCreatureController.Pain 
- mCreatureController.Stress 
+ (mCreatureController.CloseToAnne * 1.8)
- mCreatureController.Resistance 
+ mEmotionSubController.HappyActivation
+ mEmotionSubController.ShameActivation 
+ (mEmotionSubController.FearActivation * 1.8)

if DecideOrNot > 0 {
if argument0 = "good" {
RitualGoodReaction(argument1)
} else if argument0 = "bad" {
RitualBadReaction(argument1)
}
RitualCommandAccept()
return true
} else {
RitualBadReaction(argument1) 
RitualCommandRefuse()
return false
}
}

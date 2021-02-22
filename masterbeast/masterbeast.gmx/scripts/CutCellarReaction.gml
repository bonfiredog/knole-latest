///CutCellarReaction()
/*
if AmountForward(80) and IsAlive() {
if Chance(1 - LowAliveMod(0.5)) {
TwitchRun(4)
}

if IsInRitual() {
ISDown(BaseResistance,0.05)
ISUp(BasePain,0.05)
ISDown(BaseAlive,0.00005)
ISUp(CloseToAnne,0.05)
ISUp(BaseTrust,0.05)
ISUp(AnneIntent,0.05)
ChangeEmotionStep("happy","up",0.05)
ISUp(BaseLust,0.05)
} else {
ISDown(BaseResistance,0.05)
ISUp(BaseStress,0.05)
ISUp(BasePain,0.05)
ISDown(BaseAlive,0.00005)
ISDown(CloseToAnne,0.05)
ISDown(BaseTrust,0.05)
ISDown(BaseSubIntent,0.05)
ChangeEmotionStep("happy","down",0.05)
ISUp(BaseLust,0.05)
ChangeEmotionStep("shame","up",0.05)
ChangeEmotionStep("sad","up",0.05)
if Triad > 0 {
ChangeEmotionStep("anger","up",0.05)
} else {
ChangeEmotionStep("fear","up",0.05)
}
if Chance(0.1 - LowAliveMod(0.05)) {
ShiftAway(mFinger.x,mFinger.y,irandom_range(100,200),random(360))
}
if Chance(0.1 - LowAliveMod(0.05)) {
RandomShake()
}
if Chance(0.1 - LowAliveMod(0.05)) {
VocaliseChance(100)
}
if Chance(0.05 - LowAliveMod(0.025)) {
MoveBackForward("retreat",10,irandom_range(5,10))
}
}
}

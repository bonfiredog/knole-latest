///ResettingDrives(drive)

if argument0 = "fallasleep" {
SleepChanceTimer = 300
SleepingTwitches = false
}

if argument0 = "playerleave" {
LeaveTimer = 0
LeaveThreshold = irandom_range(900,1200)
LeaveYRand = irandom_range(-100,100)
SeenPlayerTimer = 500
GoneToCenter = false
LeaveRandomActTimer = irandom_range(100,400)
ZoomWait = 0
}

if argument0 = "playercome" {
PCTimerStarted = false
PCTimer = 0
PCTimerThreshold = 0
PCInteractTimer = 0
PlayerComeCheck = false
PlayerComeCheckTimer = 0
}

if argument0 = "flee" {
FleeSet = false
NotReturnTimer = 0
}

if argument0 = "retreat" {
RetreatSet = false
BackAmount = 0
BackRate = 0
NotReturnTimer = 0
BackThreshold = 0
}

if argument0 = "todefaultpos" {
XYMoveSet = false
XYSpeed = 0
}

if argument0 = "comeforward" {
ForwardSet = false
ForwardRate = 0
ForwardAmount = 0
ForwardThreshold = 0
}

if argument0 = "gotoeat" {
GTEPauseTimer = 0
GTESet = false
GTEBreaks = 0
GTEAmount = 0
AmountPerStop = 0
GTEWaitTimerBase = 0
GTEWaitTimer = 0
GTERate = 0
}

if argument0 = "acceptritual" {
ARSet = false
ARWaitTimer = irandom_range(30,70)
ARTwitches = irandom_range(20,40)
ARTwitchTimerBase = round(ARWaitTimer / ARTwitches)
ARTwitchTimer = ARTwitchTimerBase
}

if argument0 = "doze" {
DozeSet = false
DozeRand = 0
DozeThreshold = 0
}

if argument0 = "cleangound" {
GoundSet = false
GoundTimer = 0
GoundTimerThreshold = 0
GoundRandomTimer = 0
GoundRandom = 0
}

if argument0 = "strokenose" {
StrokeNoseSet = false
StrokeNoseTimer = 0
StrokeNoseTimerInitial = 0
RubTimer = 0
RubTimerThreshold = 0
StrokeNoseRandomTimer = 0
SNRand = 0
}

if argument0 = "inspectmansion" {
IMSet = false
IMAttemptTimer = 0
IMMarker1 = false
IMMarker2 = false
IMYRand = 0
IMChoose = 0
FearResistMod = 0
}

if argument0 = "followcommand" {
FollowCommandOrNot = false
}

if argument0 = "cleanskin" {
StartBlinkBehaviour()
CSSet = false
CSAttemptTimer = 0
CSDirt = 0
CSDirtThreshold = 0
CSTouchTimer = 0
CSRandomTimer = 0
CSRand = 0
}

if argument0 = "playergetoff" {
PGFSet = false
PGFTimer = 0
PGFRand = 0
PGFRandTimer = 0
}

if argument0 = "generalvocalise" {
GenVocSet = false
}

if argument0 = "touchcaul" {
TCSet = false
TCAttemptTimer = 0
TCTimerOrig = 0
TCYRand = 0
TCRandTimer = 0
TCTouchTimer = 0
TCTouchTimerThreshold = 0
}

if argument0 = "hairbrush" {
HBSet = false
HBAttemptTimer = 0
HBAttemptTimerOrig = 0
HBRandTimer = 0
BrushTimer = 0
BrushTimerThreshold = 0
}

if argument0 = "playerspeak" {
PSSet = false
PSAttemptTimer = 0
PSRand = 0
}

if argument0 = "playertouch" {
PTSet = false
PTAttemptTimer = 0
PTATO = 0 
PTRand = 0
}

if CurrentRetries > 0 {
RetryDrive = CurrentDrive
CurrentDrive = "none"
alarm[2] = irandom_range(70,200)
}


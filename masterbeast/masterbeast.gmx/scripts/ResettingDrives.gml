///ResettingDrives(drive)

if argument0 = "fallasleep" {
SleepChanceTimer = 500
SleepingTwitches = false
}

if argument0 = "playerleave" {
LeaveTimer = 0
LeaveThreshold = irandom_range(600,1000)
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
FleeCheckTimer = 0
}

if argument0 = "retreat" {
RetreatSet = false
BackAmount = 0
BackRate = 0
NotReturnTimer = 0
BackThreshold = 0
RetreatCheckTimer = 0
OriginalForward = 0
AlarmTrig = false
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
AlarmTrigFor = false
}

if argument0 = "gotoeat" {
GTESet = false
GTETimer = 0
}



if argument0 = "doze" {
DozeSet = false
DozeRand = 0
DozeTimer = 0
DozeThreshold = 0
DozeThreshTimer = 0
}

if argument0 = "strokenose" {
StrokeNoseSet = false
StrokeNoseTimer = 0
RubTimer = 0
}

if argument0 = "inspectmansion" {
IMSet = false
IMChoose = 0
ZoomedIn = false
ZoomBackTimer = 0
DoneInspect = false
}

if argument0 = "cleanskin" {
CSAttemptTimer = irandom_range(1200,2500)
}

if argument0 = "playergetoff" {
PGFTimer = irandom_range(700,1200)
}

if argument0 = "generalvocalise" {
GenVocSet = false
}

if argument0 = "touchcaul" {
TCAttemptTimer = irandom_range(1200,2500)
TCTouchTimer = 0
}

if argument0 = "playertouch" {
PTAttemptTimer =  irandom_range(1200,2500)
PTTouchTimer = 0
}

if argument0 = "zoomout" {
ZoomedOut = false
}

if argument0 = "none" {
}

if CurrentRetries > 0 {
RetryDrive = CurrentDrive
alarm[2] = irandom_range(70,200)
}


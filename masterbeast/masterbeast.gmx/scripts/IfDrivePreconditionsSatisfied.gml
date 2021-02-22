///IfDrivePreconditionsSatisfied(drive)

//Define preconditions here for drives.
//Also set to false if cooldown is more than 0.

switch argument0 {
//Falling Asleep
case "fallasleep":
if Drive1Cooldown > 0 {
return false 
} else {
if 
mBehavioursReactive.Sleeping = false and
mCreatureController.Tiredness > 70 and 
mCreatureController.Alive > 0 and
mBehavioursDeliberative.PercentForward > 0 and
InRitual = false 
{
return true
} else {
return false
}
}
break;
//--------------------------
//Player Leave
case "playerleave":
if Drive2Cooldown > 0 {
return false 
} else {
if 
(mCreatureController.Faces = "1" or
mCreatureController.Faces = "!" or
mCreatureController.HeardLoudSound = true or
mInterfaceController.PressBegun = true or 
mCreatureController.TimeSinceLastMotion < 1000
)
and mCreatureController.Alive > 20
and mBehavioursReactive.Sleeping = false
and mCreatureController.Triad < 0
and mBehavioursDeliberative.PercentForward > 0 
and mEmotionSubController.SurpriseActivation < 30
and mEmotionSubController.FearActivation < 60
and (mEmotionSubController.AngerActivation > 30 or
mCreatureController.Tiredness > 70) and 
InRitual = false and
mBehavioursDeliberative.DisappearingActive = false
and mBehavioursDeliberative.XYMove = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Player Come
case "playercome":
if Drive3Cooldown > 0 {
return false 
} else {
if mCreatureController.Faces = "0"
and mInterfaceController.PressBegun = false
and mCreatureController.HeardLoudSound = false
and mCreatureController.TimeSinceLastMotion > 6000
and mBehavioursDeliberative.PercentForward > 0
and mBehavioursReactive.Sleeping = false
and mCreatureController.Alive > 0 
and mCreatureController.Triad > -0.3
and InRitual = false
and NoReturnTimer <= 0
and mBehavioursDeliberative.DisappearingActive = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Flee
case "flee":
if Drive4Cooldown > 0 {
return false 
} else {
if mBehavioursDeliberative.PercentForward > 0 and
mCreatureController.Alive > 10 and
mBehavioursReactive.Sleeping = false and
Bound = false and
(mCreatureController.Stress > 85 or
mCreatureController.Pain > 60 or
mEmotionSubController.FearActivation > 70 or
mEmotionSubController.ShameActivation > 90 or
mEmotionSubController.AngerActivation > 80 or
mEmotionSubController.SadActivation > 95) and
mEmotionSubController.HappyActivation < 35 and
mCreatureController.Triad < 0.2 and
InRitual = false and
mCreatureController.Resistance > 25 and
mBehavioursDeliberative.DisappearingActive = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Retreat
case "retreat":
if Drive5Cooldown > 0 {
return false 
} else {
if mBehavioursDeliberative.PercentForward > 70 and
mCreatureController.Alive > 10 and
mBehavioursReactive.Sleeping = false and
Bound = false and
(
mEmotionSubController.FearActivation > 50 or
mEmotionSubController.ShameActivation > 80 or
mEmotionSubController.AngerActivation > 70 or
mEmotionSubController.SadActivation > 70 or
mCreatureController.Stress > 80 or
mCreatureController.Pain > 50) and
mBehavioursDeliberative.DisappearingActive = false and
InRitual = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//To Default Pos
case "todefaultpos":
if Drive6Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 0 
and InRitual = false
and mBehavioursReactive.Sleeping = false
and mInterfaceController.PressBegun = false
and (mInterfaceController.CurrentView = MicroView or
(mInterfaceController.CurrentView = MacroView and view_yview[0] != 1000))
and mBehavioursDeliberative.DisappearingActive = false and 
NoReturnTimer <= 0 and
NoInteractionTimer > 2000 and
mBehavioursDeliberative.XYMove = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Come Forward
case "comeforward":
if Drive7Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 0 
and InRitual = false
and mBehavioursReactive.Sleeping = false
and mBehavioursDeliberative.PercentForward < 100
and mCreatureController.Tiredness < 90
and NoReturnTimer <= 0
and Dozing = false
and mBehavioursDeliberative.XYMove = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Go To Eat
case "gotoeat":
if Drive8Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 30 
and mBehavioursReactive.Sleeping = false
and CorrectDayAndTimeForEating()
and EatenToday = false
and EatenTodayAmount < 70
and mBehavioursDeliberative.CrunchingActive = false
and Bound = false
and InRitual = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Accept Ritual
case "acceptritual":
if Drive9Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 0 and
InRitual = false and
mBehavioursReactive.Sleeping = false and
mBehavioursDeliberative.PercentForward > 20
and mBehavioursDeliberative.DisappearingActive = false
and RitualRequest = true
{
return true
} else {
return false
}
}
break;
//--------------------------
//Doze
case "doze":
if Drive10Cooldown > 0 {
return false 
} else {
if Dozing = false and
mCreatureController.Alive > 0 and
mInterfaceController.CurrentView = MacroView and
mBehavioursReactive.Sleeping = false and
mBehavioursDeliberative.PercentForward > 20
and mBehavioursDeliberative.DisappearingActive = false
and InRitual = false and
mCreatureController.Tiredness > 30 and
mCreatureController.Stress < 50 and
mEmotionSubController.SurpriseActivation < 50 and
((mCreatureController.Triad > 0) or (mCreatureController.Triad < 0 and NoInteractionTimer > 4000))
and mInterfaceController.PressBegun = false
and mEmotionSubController.FearActivation < 50
{
return true
} else {
return false
}
}
break;
//--------------------------
//Clean Gound
case "cleangound":
if Drive11Cooldown > 0 {
return false 
} else {
if instance_number(oGound) >= 6 and 
mBehavioursReactive.Sleeping = false and
Dozing = false and
mCreatureController.Triad > 0.1 and
InRitual = false and
mCreatureController.Resistance < 50 and
mCreatureController.Dirt > 25 and
mBehavioursDeliberative.CrunchingActive = false and
mCreatureController.Trust > 40 and 
mEmotionSubController.AngerActivation < 50 and
NoInteractionTimer < 2000
{
return true
} else {
return false
}
}
break;
//--------------------------
//Stroke Nose
case "strokenose":
if Drive12Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 0 and
mBehavioursDeliberative.PercentForward > 20 and
mBehavioursReactive.Sleeping = false and
Dozing = false and
mCreatureController.TimeSinceLastMotion < 4000 and 
InRitual = false and
mCreatureController.Triad > 0 and
mCreatureController.Trust > 30 and 
mCreatureController.Resistance < 30 and
mCreatureController.Pain < 50 and
mEmotionSubController.ShameActivation < 60 and
mEmotionSubController.FearActivation < 60 and
mEmotionSubController.AngerActivation < 60 and
position_meeting(mouse_x,mouse_y,oNose1) = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Inspect Mansion
case "inspectmansion":
if Drive13Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 0 and
mBehavioursReactive.Sleeping = false and
mBehavioursDeliberative.PercentForward > 40 and
mCreatureController.MotionDetected2 = true and
NoReturnTimer <= 0 and
mCreatureController.TimeSinceLastMotion < 1000 
{
return true
} else {
return false
}
}
break;
//--------------------------
//Follow Command
case "followcommand":
if Drive14Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 0 and
mBehavioursReactive.Sleeping = false and
Dozing = false and
CommandIssued = true
{
return true
} else {
return false
}
}
break;
//--------------------------
//Clean Skin
case "cleanskin":
if Drive15Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 25 and
mBehavioursReactive.Sleeping = false and
Dozing = false and
mBehavioursDeliberative.PercentForward > 60 and
InRitual = false and
(mCreatureController.Faces != "0" or mCreatureController.TimeSinceLastMotion < 1500) and
mCreatureController.Dirt >= 40 and 
mCreatureController.Triad > -0.7 and
mCreatureController.Trust > 20
{
return true
} else {
return false
}
}
break;
//--------------------------
//Player Get Off
case "playergetoff":
if Drive16Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 40 and
mBehavioursReactive.Sleeping = false and
mBehavioursDeliberative.PercentForward > 60 and
mInterfaceController.PressBegun = true and
mCreatureController.Triad < 0 and
(mCreatureController.Stress > 20 or
mEmotionSubController.ShameActivation < 20) and
mCreatureController.Resistance > 30 and 
InRitual = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//General Vocalise
case "generalvocalise":
if Drive17Cooldown > 0 {
return false 
} else {
if mCreatureController.Alive > 40 and
mBehavioursReactive.Sleeping = false and
mBehavioursDeliberative.Vocalising = false and 
mBehavioursDeliberative.CrunchingActive = false and 
Dozing = false
{
return true
} else {
return false
}
}
break;
//--------------------------
//Touch Caul
case "touchcaul":
if Drive18Cooldown > 0 {
return false 
} else {
if mBehavioursReactive.Sleeping = false and
mCreatureController.Lust > 60 and 
InRitual = false and 
mCreatureController.Stress < 40 and 
mCreatureController.Pain < 50 and 
mCreatureController.Alive > 0 and
Dozing = false and 
mEmotionSubController.SadActivation < 50 and
mEmotionSubController.ShameActivation < 25 and
(instance_exists(mFinger)and place_meeting(mFinger.x,mFinger.y,mCaulParent) = false) and 
mCreatureController.Triad >= 0 and
mCreatureController.Trust > 20 and 
mCreatureController.Resistance < 50 and 
mBehavioursDeliberative.PercentForward > 0 
{
return true
} else {
return false
}
}
break;
//--------------------------
//Hair Brush
case "hairbrush":
if Drive19Cooldown > 0 {
return false 
} else {
if mBehavioursReactive.Sleeping = false and
mCreatureController.Alive > 0 and
mBehavioursDeliberative.PercentForward > 0 and
Dozing = false and 
InRitual = false and 
mEmotionSubController.ShameActivation < 25 and
mCreatureController.Trust > 20 and 
mCreatureController.Triad >= 0 and
mCreatureController.Resistance < 40 and 
((instance_exists(mFinger) = false) or (instance_exists(mFinger) and place_meeting(mFinger.x,mFinger.y,mFurSuperParent) = false)) 
and StrokeTimer < 60
{
return true
} else {
return false
}
}
break;
//--------------------------
//Player Speak
case "playerspeak":
if Drive20Cooldown > 0 {
return false 
} else {
if (mCreatureController.Faces != "0" or mCreatureController.TimeSinceLastMotion < 2000) and
mBehavioursReactive.Sleeping = false and
TimeSinceLastSpeech > 2000 and
mEmotionSubController.ShameActivation < 45 and
mEmotionSubController.SurpriseActivation < 45 and
mEmotionSubController.HappyActivation > 35 and
mEmotionSubController.FearActivation < 35 and
mCreatureController.Pain < 45 and
mCreatureController.Alive > 0 and
Dozing = false and
InRitual = false and 
mCreatureController.Trust > 20 and 
mCreatureController.Triad >= 0 and
mBehavioursDeliberative.Vocalising = false and
mBehavioursDeliberative.PercentForward > 0
{
return true
} else {
return false
}
}
break;
//--------------------------
//Player Touch
case "playertouch":
if Drive21Cooldown > 0 {
return false 
} else {
if mInterfaceController.PressBegun = false and 
TimeSinceLastTouch > 2000 and 
(mCreatureController.TimeSinceLastMotion < 1000 or Faces != "0") and 
mBehavioursDeliberative.PercentForward > 0 and 
mBehavioursReactive.Sleeping = false and
Dozing = false and
InRitual = false and 
mEmotionSubController.FearActivation < 35 and
mCreatureController.Resistance < 40 and
mCreatureController.Trust > 20 and 
mCreatureController.Triad >= 0 and
mEmotionSubController.ShameActivation < 45 and
mCreatureController.Alive > 0 and
mCreatureController.Stress < 45 and
mCreatureController.Pain < 45
{
return true
} else {
return false
}
}
break;
//--------------------------
default:
return false;
break;
}

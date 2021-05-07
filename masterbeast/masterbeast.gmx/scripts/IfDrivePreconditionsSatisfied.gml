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
(mEmotionSubController.FearActivation < 40 and mCreatureController.CloseToAnne < 60) and
((mCreatureController.Triad > 0) or (mCreatureController.Triad < 0 and NoInteractionTimer > 3000)) and
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
if NoInteractionTimer < 1000
and mCreatureController.Alive > 25
and mBehavioursReactive.Sleeping = false
and Dozing = false
and mCreatureController.Triad < 0
and mBehavioursDeliberative.PercentForward > 0 
and mEmotionSubController.FearActivation < 60
and mCreatureController.Resistance > 50
and (mEmotionSubController.AngerActivation > 30 or
mCreatureController.Tiredness > 50) and 
mCreatureController.CloseToAnne < 50 and
InRitual = false
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
if NoInteractionTimer > 2500
and mBehavioursDeliberative.PercentForward > 0
and mBehavioursReactive.Sleeping = false
and Dozing = false
and mCreatureController.Alive > 0 
and mCreatureController.Triad > 0
and mCreatureController.Resistance < 50
and mCreatureController.Trust > 40 and
(mEmotionSubController.FearActivation < 60) and
InRitual = false
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
mCreatureController.Alive > 20 and
mBehavioursReactive.Sleeping = false and
Dozing = false and
(mCreatureController.Stress > 75 or
mCreatureController.Pain > 75 or
mEmotionSubController.FearActivation > 75 or
mEmotionSubController.ShameActivation > 75 or
mEmotionSubController.AngerActivation > 75 or
mEmotionSubController.SadActivation > 75) 
and
mEmotionSubController.HappyActivation < 45 and
mCreatureController.Triad < 0.2 and
InRitual = false and
mCreatureController.Resistance > 30 and
mCreatureController.CloseToAnne < 40 
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
if mBehavioursDeliberative.PercentForward > 50 and
mCreatureController.Alive > 20 and
mBehavioursReactive.Sleeping = false and
mDriveCollectionMaster.Dozing = false and
(
mEmotionSubController.FearActivation > 40 or
mEmotionSubController.ShameActivation > 40 or
mEmotionSubController.AngerActivation > 40 or
mEmotionSubController.SadActivation > 40 or
mCreatureController.Stress > 40 or
mCreatureController.Pain > 40) 
and
mCreatureController.Resistance > 10 and
mCreatureController.CloseToAnne < 60 and
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
and Dozing = false
and mInterfaceController.PressBegun = false
and (mInterfaceController.CurrentView = MicroView or
(mInterfaceController.CurrentView = MacroView and mBehavioursDeliberative.PercentForward >= 90 and view_yview[0] != 1000))
and
NoInteractionTimer > 9000 and
mBehavioursDeliberative.XYMove = false and
(mEmotionSubController.FearActivation < 60 and mCreatureController.CloseToAnne < 60)
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
and Dozing = false and
mCreatureController.Resistance < 70 and
mCreatureController.Triad > -0.5
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
and Dozing = false
and IsInEatingHours(current_weekday,true)
and mCreatureController.Stress < 90
and EatenToday = false
and mBehavioursDeliberative.CrunchingActive = false
and InRitual = false and
(mEmotionSubController.FearActivation < 60 and mCreatureController.CloseToAnne < 60)
and mCreatureController.Resistance > 30
and mEmotionSubController.ShameActivation < 60
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
mBehavioursReactive.Sleeping = false and
mBehavioursDeliberative.PercentForward > 70
and InRitual = false and
mCreatureController.Tiredness > 20 and
mCreatureController.Stress < 60 and
mCreatureController.Pain < 70 and
mEmotionSubController.SurpriseActivation < 20 and
((mCreatureController.Triad > 0) or (mCreatureController.Triad < 0 and NoInteractionTimer > 3000))
and mInterfaceController.PressBegun = false and
mEmotionSubController.FearActivation < 50 and
mCreatureController.CloseToAnne < 50
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
mCreatureController.Triad > 0.4 and
mCreatureController.Trust > 50 and 
mCreatureController.Resistance < 40 and
mCreatureController.Pain < 50 and
mEmotionSubController.ShameActivation < 60 and
mEmotionSubController.FearActivation < 70 and
mCreatureController.CloseToAnne < 60 and
mEmotionSubController.AngerActivation < 60 and
mCreatureController.Tiredness > 30 and
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
Dozing = false and
mBehavioursDeliberative.PercentForward > 40 and

mCreatureController.MotionDetected2 = true and
mCreatureController.Pain < 75 and
mCreatureController.Triad > -0.75 and 
NoReturnTimer <= 0 and
mCreatureController.TimeSinceLastMotion < 2000 
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
if mCreatureController.Alive > 10 and
mBehavioursReactive.Sleeping = false and
Dozing = false and
mBehavioursDeliberative.PercentForward > 50 and
InRitual = false and
NoInteractionTimer < 4000 and
mCreatureController.Dirt >= 40 and 
mCreatureController.Triad > -0.5 and
mCreatureController.Trust > 40 and
mEmotionSubController.FearActivation < 70 and
mCreatureController.CloseToAnne < 60 
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
Dozing = false and
mBehavioursDeliberative.PercentForward > 50 and
mDriveCollectionMaster.TimeSinceLastTouch < 500 and
mCreatureController.Triad < 0 and
(mCreatureController.Stress > 20 ) and
mCreatureController.Resistance > 30 and 
mEmotionSubController.FearActivation < 50 and
mCreatureController.CloseToAnne < 40 and
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
mEmotionSubController.FearActivation < 60 and
mCreatureController.CloseToAnne < 60 and
mCreatureController.Triad > -0.5 and 
InRitual = false and
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
mCreatureController.Lust > 70 and 
EjacTrack >= 0 and
InRitual = false and 
mCreatureController.Stress < 40 and 
mCreatureController.Pain < 65 and 
mCreatureController.Alive > 0 and
Dozing = false and 
mEmotionSubController.SadActivation < 50 and
mEmotionSubController.ShameActivation < 40 and
(position_meeting(mouse_x,mouse_y,mCaulParent) = false) and
mCreatureController.Triad >= -0.2 and
mCreatureController.Trust > 20 and 
mCreatureController.Resistance < 50 and 
mEmotionSubController.FearActivation < 40 and
mCreatureController.CloseToAnne < 50 and
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
TimeSinceLastTouch > 1000 and 
mBehavioursDeliberative.PercentForward > 0 and 
mBehavioursReactive.Sleeping = false and
Dozing = false and
InRitual = false and 
mEmotionSubController.FearActivation < 40 and
mCreatureController.Resistance < 40 and
mCreatureController.Trust > 20 and 
mCreatureController.Triad >= 0 and
mEmotionSubController.ShameActivation < 50 and
mCreatureController.Alive > 0 and
mCreatureController.Stress < 45 and
mCreatureController.Pain < 45 and
mCreatureController.CloseToAnne < 50 
{
return true
} else {
return false
}
}
break;
//--------------------------
//Zoom Out
case "zoomout":
if Drive22Cooldown > 0 {
return false 
} else {
if mInterfaceController.PressBegun = false and
mInterfaceController.CurrentView = MicroView and 
mBehavioursReactive.Sleeping = false and
Dozing = false 
and mInterfaceController.ZoomedInTimer > 1200
and InRitual = false
and mCreatureController.Resistance > 25 and
NoInteractionTimer > 1200
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

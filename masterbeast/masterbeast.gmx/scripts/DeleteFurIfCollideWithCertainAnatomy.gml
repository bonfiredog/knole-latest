///DeleteFurIfCollideWithCertainAnatomy(FurToCheck)

FurToCheck = argument0

if place_meeting(FurToCheck.x,FurToCheck.y,mEarAreaTemplateR)
or place_meeting(FurToCheck.x,FurToCheck.y,mEarAreaTemplateL)
or place_meeting(FurToCheck.x,FurToCheck.y,mFaceAreaTemplate)
or place_meeting(FurToCheck.x,FurToCheck.y,mBaldPatches)
or place_meeting(FurToCheck.x,FurToCheck.y,oBigToothLeft)
or place_meeting(FurToCheck.x,FurToCheck.y,oBigToothRight) 
or 
(
place_meeting(FurToCheck.x,FurToCheck.y,oSkinLayerTop) = false 
and place_meeting(FurToCheck.x,FurToCheck.y,oSkinLayerBottom) = false
and place_meeting(FurToCheck.x,FurToCheck.y,oMouthEdgeNewTop) = false
and place_meeting(FurToCheck.x,FurToCheck.y,oMouthEdgeNewBottom) = false
)
or place_meeting(FurToCheck.x,FurToCheck.y,oTabooLayer)
{
return true
} else {
return false
}

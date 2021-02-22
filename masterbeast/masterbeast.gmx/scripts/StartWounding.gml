///StartWounding()

Wounding = true
CutStartX = mFinger.x
CutStartY = mFinger.y
CutDistance = 0
CutTimer = 0
LastX = mFinger.x
LastY = mFinger.y
WriteToLog("Started cutting at" + string(CutStartX) + "," + string(CutStartY))
ex_audio_set_pitch("cutin",random_range(1.8,3.2))
ex_audio_set_volume("cutin",BothVolMod(0.8),0)
ex_audio_play("cutin",0)
CutSound = choose("cut1","cut2","cut3","cut4","cut5")
InitialPitch = random_range(2,3)
ex_audio_set_pitch(CutSound,InitialPitch)
ex_audio_set_volume(CutSound,BothVolMod(0.8),30)
ex_audio_play(CutSound,1)

if(instance_number(oWound) + instance_number(oStabWound)) >= MaxCuts {
if instance_exists(oStabWound) {
InstanceToDelete = instance_find(oStabWound,irandom_range(0,instance_number(oStabWound) - 1))
with InstanceToDelete {
instance_destroy()
}
} else {
InstanceToDelete = instance_find(oWound,irandom_range(0,instance_number(oWound) - 1))
with InstanceToDelete {
instance_destroy()
}
}
}

path_clear_points(ThisWoundPath)
path_add_point(ThisWoundPath,CutStartX,CutStartY,0)
DrawingPath = true
if position_meeting(mouse_x,mouse_y,oNose1) {
CuttingWhat = "nose"
} else if position_meeting(mouse_x,mouse_y,oCaulBowl) {
CuttingWhat = "caulbowl"
} else if position_meeting(mouse_x,mouse_y,oCaulJug) and position_meeting(mouse_x,mouse_y,oCaulCankerCentral) = false {
CuttingWhat = "cauljug"
} else if position_meeting(mouse_x,mouse_y,oCheekLeft) {
CuttingWhat = "cheekleft"
} else if position_meeting(mouse_x,mouse_y,oCheekRight) {
CuttingWhat = "cheekright"
} else if position_meeting(mouse_x,mouse_y,oBrowLeft) {
CuttingWhat = "browleft"
} else if position_meeting(mouse_x,mouse_y,oBrowRight) {
CuttingWhat = "browright"
} else if position_meeting(mouse_x,mouse_y,mTopOfHeadTemplate) {
CuttingWhat = "tophead"
} else {
CuttingWhat = "skin" {
}
}
StartScreenShake(2,8,1)

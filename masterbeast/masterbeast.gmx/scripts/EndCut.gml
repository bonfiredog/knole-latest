///EndCut()

ex_audio_stop(CutSound)
ex_audio_set_pitch("cutout",random_range(1.8,3.2))
ex_audio_set_volume("cutout",BothVolMod(0.8),0)
ex_audio_play("cutout",0)
StartScreenShake(1,8,1)

if CutDistance <= 80 {
//Create a stab wound and set its maximum size.
CurrentWound = instance_create(CutStartX,CutStartY,oStabWound)
switch CuttingWhat {
case "cheekleft":
CurrentWound.depth = CheekLayer - 0.001
CurrentWound.On = "cheekleft"
break;
case "caulbowl":
CurrentWound.depth = CaulLayer - 0.009
CurrentWound.On = "caulbowl"
break;
case "cauljug":
CurrentWound.depth = CaulLayer - 0.03
CurrentWound.On = "cauljug"
break;
case "cheekright":
CurrentWound.depth = CheekLayer - 0.001
CurrentWound.On = "cheekright"
break;
case "browleft":
CurrentWound.depth = BrowLayer - 0.001
CurrentWound.On = "browleft"
case "browright":
CurrentWound.depth = BrowLayer - 0.001
CurrentWound.On = "browright"
break;
case "nose":
CurrentWound.depth = NoseLayer - 0.001
CurrentWound.On = "nose"
break;
case "tophead":
CurrentWound.depth = HeadSkinLayer - 0.001
CurrentWound.On = "skin"
break;
case "skin":
CurrentWound.depth = HeadSkinLayer - 0.001
CurrentWound.On = "skin"
break;
}
Wounding = false
CuttingWhat = "none"
CutStartX = 0
CutStartY = 0
//CutDistance = 0
DrawingPath = false
CutTimer = 0

} else {
//Create the wound at the start of the path.
CurrentWound = instance_create(CutStartX,CutStartY,oWound)
//Create a path for the new wound, copy the points from the current path, and delete the current path.
path_assign(CurrentWound.Path,ThisWoundPath)
switch CuttingWhat {
case "cheekleft":
CurrentWound.depth = CheekLayer - 0.001
CurrentWound.On = "cheekleft"
break;
case "caulbowl":
CurrentWound.depth = CaulLayer - 0.009
CurrentWound.On = "caulbowl"
break;
case "cauljug":
CurrentWound.depth = CaulLayer - 0.03
CurrentWound.On = "cauljug"
break;
case "cheekright":
CurrentWound.depth = CheekLayer - 0.001
CurrentWound.On = "cheekright"
break;
case "browleft":
CurrentWound.depth = BrowLayer - 0.001
CurrentWound.On = "browleft"
case "browright":
CurrentWound.depth = BrowLayer - 0.001
CurrentWound.On = "browright"
break;
case "nose":
CurrentWound.depth = NoseLayer - 0.001
CurrentWound.On = "nose"
break;
case "tophead":
CurrentWound.depth = HeadSkinLayer - 0.001
CurrentWound.On = "skin"
break;
case "skin":
CurrentWound.depth = HeadSkinLayer - 0.001
CurrentWound.On = "skin"
break;
}
Wounding = false
CuttingWhat = "none"
CutStartX = 0
CutStartY = 0
//CutDistance = 0
CutTimer = 0
}
mDriveCollectionMaster.CutReactOut = true
if ResetKnifeOnLift = true {
CurrentHandUse = "none"
}



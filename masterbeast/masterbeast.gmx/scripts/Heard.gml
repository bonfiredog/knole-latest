///Heard()

if Chance(mBehavioursDeliberative.PercentForward + 40) {
if mInterfaceController.CurrentView = MacroView {
if mCreatureController.Hearing > 0 {
if mCreatureController.Hearing < 100 {
HeardOrNot = choose(-1,1,1)
if HeardOrNot = 1 {
return true
} else {
return false
}
} else {
return true
}
} else {
return false
}
} else {
if (point_distance((view_xview[1] + (view_wview[1] / 2)),(view_xview[1] + (view_wview[1] / 2)),209,1505) > 500 or instance_exists(oEarLeft) = false)
and (point_distance((view_xview[1] + (view_wview[1] / 2)),(view_xview[1] + (view_wview[1] / 2)),1155,1505) > 500 or instance_exists(oEarRight) = false)
{
if mCreatureController.Hearing > 0 {
if mCreatureController.Hearing < 100 {
HeardOrNot = choose(-1,-1,1)
if HeardOrNot = 1 {
return true 
} else {
return false
}
} else {
return false
}
} else {
return false
}
} else {
if mCreatureController.Hearing > 0 {
if mCreatureController.Hearing < 60 {
HeardOrNot = choose(-1,1)
if HeardOrNot = 1 {
return true
} else {
return false
}
} else {
return true
}
} else {
return false
}
}
}
} else {
return false
}






if State != "standing" and State != "walking" and State != "turnbackandforth"
and State != "fleeing"
and place_meeting(oShepherdBody.x,oShepherdBody.y,oShepherdHome) = false
and place_meeting(oShepherdBody.x,oShepherdBody.y,oSitWound) = false
{
instance_create(x,y,oSitWound)
}

State = "walking"
CrookReset = false


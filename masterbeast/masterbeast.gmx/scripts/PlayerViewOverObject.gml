///PlayerViewOverObject(obj)

if (argument0.bbox_right < view_xview[1]
or argument0.bbox_left > (view_xview[1] + view_wview[1]))
or
(argument0.bbox_top > (view_yview[1]+ view_hview[1])
or argument0.bbox_bottom < view_yview[1])
or instance_exists(argument0) = false
{
return false
} else
{
return true
}


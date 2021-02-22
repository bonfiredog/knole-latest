///CreateEarringBallJoint(origin,source,angle_limit)

Origin = argument0
Source = argument1
AngleLimit = argument2

physics_joint_revolute_create(Origin,Source,Origin.x,Origin.y + (Origin.sprite_height / 2),-AngleLimit,AngleLimit,true,0,0,false,false)


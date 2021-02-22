ChildSection = instance_create(ParentSection.x,ParentSection.y + 6,oEndSection)
physics_joint_revolute_create(ParentSection, ChildSection, ParentSection.x, ParentSection.y + 6, -45, 45, true, 0, 0, false, false)
ParentSection = noone
ChildSection = noone


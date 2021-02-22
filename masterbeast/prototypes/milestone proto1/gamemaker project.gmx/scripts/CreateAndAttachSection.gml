if SectionsCreated = 0 {

ParentSection = self.id
ChildSection = instance_create(ParentSection.x,ParentSection.y,oRopeSection)
physics_joint_revolute_create(ParentSection, ChildSection, ParentSection.x, ParentSection.y, -40, 40, true,0,0,false,false)
ParentSection = ChildSection
ChildSection = noone

} else if SectionsCreated > 0 {
ChildSection = instance_create(ParentSection.x,ParentSection.y + 12,oRopeSection)
physics_joint_revolute_create(ParentSection, ChildSection, ParentSection.x, ParentSection.y + 6,-40,40,true,0,0,false, false)
ParentSection = ChildSection
ChildSection = noone
}


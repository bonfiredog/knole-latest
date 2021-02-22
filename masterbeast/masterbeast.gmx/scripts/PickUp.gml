///PickUp(dens,rest,ang_damp,lin_damp,fric)

Dens = argument0
Rest = argument1
AngDamp = argument2
LinDamp = argument3
Fric = argument4


if place_meeting(x,y,mCursor)
and mouse_check_button_pressed(mb_middle)
and mCursor.Holding = false
{
if FirstTimePickup = false {
Fixture = physics_fixture_create();
physics_fixture_set_box_shape(Fixture, sprite_width / 2, sprite_height / 2);
physics_fixture_set_density(Fixture, Dens);
physics_fixture_set_restitution(Fixture, Rest);
physics_fixture_set_angular_damping(Fixture, AngDamp)
physics_fixture_set_linear_damping(Fixture, LinDamp)
physics_fixture_set_friction(Fixture, Fric);
MyBoundFixture = physics_fixture_bind(Fixture, id);
physics_fixture_delete(Fixture);
depth = OffObjectsLayer

//Object-Specific Changes

if self.object_index = oSmallToothTop or self.object_index = oSmallToothBottom {
Parent.ToothIn = false
Parent = noone
}

//------------------------------

PickedUp = true
FirstTimePickup = true
}
mCursor.ItemCarried = self.id
}

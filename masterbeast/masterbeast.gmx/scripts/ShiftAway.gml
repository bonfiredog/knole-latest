///ShiftAway(orig_x,orig_y,Len,Dir)

if mInterfaceController.CurrentView = MicroView and mInterfaceController.Cleaning = false and mInterfaceController.Healing = false {
NewX = argument0 + lengthdir_x(argument2,argument3)
NewY = argument1 + lengthdir_y(argument2,argument3)

MoveToXY(NewX,NewY,irandom_range(15,20),mInterfaceController.CurrentView,10)
}

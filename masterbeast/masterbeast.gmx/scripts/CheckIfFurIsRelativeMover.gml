///CheckIfFurIsRelativeMover(FurToCheck)

FurToCheck = argument0
with FurToCheck {
if place_meeting(x,y,oMouthEdgeNewTop) {
RelativeMover = "top"
} else if place_meeting(x,y,oMouthEdgeNewBottom) {
RelativeMover = "bottom"
}
}


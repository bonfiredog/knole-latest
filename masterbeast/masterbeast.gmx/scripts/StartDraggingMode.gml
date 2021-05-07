///StartDraggingMode()
with mInterfaceController {
WriteToLog("Hand is now dragging view.")
CurrentHandUse = "drag"
DragX = mouse_x
DragY = mouse_y
OriginalDragX = DragX
OriginalDragY = DragY
DragTimer = 4000
- ((500 / 100) * mCreatureController.Tiredness)
- ((500 / 100) * mCreatureController.Pain)
- ((500 / 100) * mCreatureController.Stress)
+ ((500 / 100) * mCreatureController.CloseToAnne)
- (500 * mCreatureController.Triad)
- ((1000 / 100) * mCreatureController.Resistance)

Cleaning = false
Healing = false
}

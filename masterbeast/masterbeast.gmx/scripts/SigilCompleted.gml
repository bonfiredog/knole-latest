///SigilCompleted(sequence)

if mInterfaceController.SequenceBegun = true and mouse_check_button_released(mb_any) {
if mInterfaceController.CandidateSymbol = argument0 {
return true
} else {
return false
}
} else {
return false
}

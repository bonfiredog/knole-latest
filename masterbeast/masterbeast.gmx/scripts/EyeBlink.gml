///EyeBlink()

if Parent.Changing = true {
if image_index != Parent.TargetIndex {
if Timer > 0 {
Timer -= 1
} else if Timer <= 0 {
if image_index < Parent.TargetIndex {
image_index += 1
} else if image_index > Parent.TargetIndex {
image_index -= 1
}
Timer = Parent.SpeedOfEyelid 
}
} else if image_index = Parent.TargetIndex {
FinishedMoving = true
Parent.Changing = false
}
}




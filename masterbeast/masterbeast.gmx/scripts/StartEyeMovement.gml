///StartEyeMovement(Target, Speed, TargetIndex)

//Start moving a particular eye at a particular speed towards a particular index.

Target = argument0
TargetIndexArg = argument2

with(Target) {
Changing = true
SpeedOfEyelid = argument1
TargetIndex = argument2
if TargetIndex > MaxOpenIndex {
TargetIndex = MaxOpenIndex
}
}
if Target = oEyeballLeft {
oEyelidUpperLeft.Timer = oEyeballLeft.SpeedOfEyelid
oEyelidLowerLeft.Timer = oEyeballLeft.SpeedOfEyelid
oEyelidUpperLeft.FinishedMoving = false
oEyelidLowerLeft.FinishedMoving = false
} else if Target = oEyeballRight {
oEyelidUpperRight.Timer = oEyeballRight.SpeedOfEyelid
oEyelidLowerRight.Timer = oEyeballRight.SpeedOfEyelid
oEyelidUpperRight.FinishedMoving = false
oEyelidLowerRight.FinishedMoving = false
}



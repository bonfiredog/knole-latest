///GenerateFurSection(HowManyHairsTotal,HowManySecondsToTry,HairsOwner)

TotalHairs = argument0
Seconds = argument1
Owner = argument2
NumberOfHairsGenerated = 0
FinishedGenerating = false


if FinishedGenerating = false {

if NumberOfHairsGenerated < TotalHairs {

ThisHair = instance_create(
random_range((x - (sprite_width / 2)),(x + (sprite_width / 2))),
random_range((y - (sprite_height / 2)),(y + (sprite_height / 2))),
oFur1
)

with ThisHair {

OwnerPlane = self.id


if place_meeting(x,y,oFur1) {instance_destroy()
} else {
NumberOfHairsGenerated = NumberOfHairsGenerated + 1
}
}

} else if NumberOfHairsGenerated >= TotalHairs {
FinishedGenerating = true
}
}

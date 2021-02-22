if mSession.RainbowMode = true {
if mSession.RainbowModeColourPicked = false {
ThisColour = make_colour_hsv(random(255),random(255),random(255))
mSession.RainbowModeColourPicked = true 
}
image_blend = ThisColour
} else {
image_blend = c_white
}

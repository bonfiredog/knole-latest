///ScreenShake

with mInterfaceController {
if ScreenShaking = true {

if SSTime > 0 {
SSTime -= 1

if SSSideTime > 0 {
SSSideTime -= 1
if SSDir = "left" {
ShakeMod -= 1 * SSIntensity
} else if SSDir = "right" {
ShakeMod += 1 * SSIntensity
}
} else if SSSideTime <= 0 {
if SSDir = "left" {
SSDir = "right"
} else if SSDir = "right" {
SSDir = "left"
}
SSSideTime = OriginalSSSideTime
}

} else if SSTime <= 0 {
if SSIntensity > 0 {

if SSSideTime > 0 {
SSSideTime -= 1
if SSDir = "left" {
ShakeMod -= 1 * SSIntensity
} else if SSDir = "right" {
ShakeMod += 1 * SSIntensity
}
} else if SSSideTime <= 0 {
if SSDir = "left" {
SSDir = "right"
} else if SSDir = "right" {
SSDir = "left"
}
SSSideTime = OriginalSSSideTime - ((OriginalSSSideTime / OriginalSSIntensity) * SSIntensity)
}

SSIntensity -= 0.3
} else if SSIntensity <= 0 {

if ShakeMod < 3 {
ShakeMod += 0.1
} else if ShakeMod > 3 {
ShakeMod -= 0.1
} else {
SSIntensity = 0
SSTime = 0
ScreenShaking = false
ShakeMod = 0
SSSideTime = 0
}
}
}
}
}



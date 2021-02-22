//Display The Names And Properties Of Latest Gesture For A Certain Number Of Seconds

DrawTextRelativeDebugSurface(fDebugStats, DebugBlackTextColour, 0.7, fa_center,fa_center,GestureText,Column1WidthSurface)

if ShowingTestGesture = false {
with mInterfaceController {
if LongPress1() = true {
mDebug.GestureText = "Long Press 1"
mDebug.ShowingTestGesture = true
} else if LongPress2() = true {
mDebug.GestureText = "Long Press 2"
mDebug.ShowingTestGesture = true
} else if LongPress3() = true {
mDebug.GestureText = "Long Press 3"
mDebug.ShowingTestGesture = true
} else if LongPress4() = true {
mDebug.GestureText = "Long Press 4"
mDebug.ShowingTestGesture = true
} else if LongPress5() = true {
mDebug.GestureText = "Long Press 5"
mDebug.ShowingTestGesture = true
} else if MultipleTaps1(3) = true {
mDebug.GestureText = "Multiple Taps 1"
mDebug.ShowingTestGesture = true
} else if MultipleTaps2(3) = true {
mDebug.GestureText = "Multiple Taps 2"
mDebug.ShowingTestGesture = true
} else if MultipleTaps3(3) = true {
mDebug.GestureText = "Multiple Taps 3"
mDebug.ShowingTestGesture = true
} else if MultipleTaps4(3) = true {
mDebug.GestureText = "Multiple Taps 4"
mDebug.ShowingTestGesture = true
} else if MultipleTaps5(3) = true {
mDebug.GestureText = "Multiple Taps 5"
mDebug.ShowingTestGesture = true
}
}
}

if ShowingTestGesture = true {
GestureDisplayTime -= 1

if GestureDisplayTime = 0 {
GestureDisplayTime = 120
GestureText = "No Gesture Detected."
ShowingTestGesture = false
}
}


if ConsoleActive = true {
if ConsoleEnterPressed = false {

DrawTextRelativeDebug(fDebugConsole,DebugRedTextColour,0.7,fa_left,fa_center,keyboard_string,ConsoleTextWidth)
Input = keyboard_string

if keyboard_check_pressed(vk_enter) {
ConsoleEnterPressed = true
}


} else if ConsoleEnterPressed = true {
//Set up the result line.
TextX = ConsoleTextLeft
TextY += ConsoleLineHeight
DrawTextRelativeDebug(fDebugConsole,CurrentColour,CurrentAlpha,fa_left,fa_center,">",ConsoleTextWidth)
TextX += string_width("> ")

if Input = "help" or Input = "Help" {
DrawTextRelativeDebug(fDebugConsole,CurrentColour,CurrentAlpha,fa_left,fa_center,"Type 'set [x] to [y]' to change variables, or 'view [x]' to view variables.",ConsoleTextWidth)
//Other inputs
} 
else {
DrawTextRelativeDebug(fDebugConsole,CurrentColour,CurrentAlpha,fa_left,fa_center,"Input not recognised.",ConsoleTextWidth)
}

if Input = "" {
Input = ""
} else {
TextX = ConsoleTextLeft
TextY += ConsoleLineHeight
DrawTextRelativeDebug(fDebugConsole,CurrentColour,CurrentAlpha,fa_left,fa_center,">",ConsoleTextWidth)
TextX += string_width("> ")
}

keyboard_string = ""
ConsoleEnterPressed = false

}
}


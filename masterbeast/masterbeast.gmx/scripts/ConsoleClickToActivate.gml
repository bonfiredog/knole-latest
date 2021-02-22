if MouseWithinConsole() = true and
mouse_check_button(mb_any) {
ConsoleActive = true
keyboard_string = ""
}

if MouseWithinConsole() = false and
mouse_check_button(mb_any) {
ConsoleActive = false
}


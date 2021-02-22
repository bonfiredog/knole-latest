///PullInScreenshot()

//Probably won't be used - pull in a new screenshot from Eavesdrop as a sprite.

if file_exists("new ss.txt") {
WriteToLog("New screenshot created.")
CurrentScreenshot = sprite_add("currentscreenshot.png",0,false,false,0,0)
file_delete("new ss.txt")
}



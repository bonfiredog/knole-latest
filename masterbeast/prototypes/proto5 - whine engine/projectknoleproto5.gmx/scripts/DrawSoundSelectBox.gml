
if global.CurrentMode = "Single" {

SoundUploadTitleLine = posy
draw_set_halign(fa_center)
draw_set_font(fBoxTitle)
draw_set_color(c_red)
draw_text(posx,posy,"1. Upload A Sound...")
UpdateTextY(80)
if CreatedSoundUploadField = false {
ThisBox = instance_create(posx,posy,oUploadField)
ThisBox.image_yscale = 3
ThisBox.image_xscale = 5
ThisBox.FixedX = ThisBox.x
ThisBox.FixedY = ThisBox.y
ThisBox.GeneratedValues = true
CreatedSoundUploadField = true
}
UpdateTextX(130)
if CreatedSoundUploadPlay = false {
ThisPlay = instance_create(posx,posy,oPlay)
ThisPlay.image_xscale = 0.5
ThisPlay.image_yscale = ThisPlay.image_xscale
ThisPlay.FixedX = ThisPlay.x
ThisPlay.FixedY = ThisPlay.y
ThisPlay.Function = "soundupload"
ThisPlay.GeneratedValues = true
CreatedSoundUploadPlay = true
}

UpdateTextX(300)
posy = SoundUploadTitleLine
draw_set_halign(fa_center)
draw_set_font(fBoxTitle)
draw_set_color(c_red)
draw_text(posx,posy,"1a. ...Or Choose A Preloaded Sound.")
if CreatedPreloadSoundBoxes = false {
ThisBox1 = instance_create(x,y,oPreloadField)
ThisBox1.Number = 1
ThisBox1.MyPlayButton.Number = ThisBox1.Number
ThisBox1.FixedX = posx - 100
ThisBox1.FixedY = posy + 80
ThisBox1.GeneratedValues = true
ThisBox2 = instance_create(x,y,oPreloadField)
ThisBox2.Number = 2
ThisBox2.MyPlayButton.Number = ThisBox2.Number
ThisBox2.FixedX = ThisBox1.FixedX + 200
ThisBox2.FixedY = posy + 80
ThisBox2.GeneratedValues = true
ThisBox3 = instance_create(x,y,oPreloadField)
ThisBox3.Number = 3
ThisBox3.MyPlayButton.Number = ThisBox3.Number
ThisBox3.FixedX = ThisBox2.FixedX + 200
ThisBox3.FixedY = posy + 80
ThisBox3.GeneratedValues = true
CreatedPreloadSoundBoxes = true
}























} else if global.CurrentMode = "Multiple" {


} else if global.CurrentMode = "Glosslalia" {




}













///PullInImageResult2()

//Create a ds_list of all the vision tags.

if file_exists("new vision2.txt") {
VisionResultFile = file_text_open_read("new vision2.txt")
ds_list_clear(CurrentVisionTags2)

while (!file_text_eof(VisionResultFile))
   {
   ds_list_add(CurrentVisionTags2, file_text_read_string(VisionResultFile))
   file_text_readln(VisionResultFile)
   }
file_text_close(VisionResultFile);
BlinkOrSquint = choose(-1,1)
if BlinkOrSquint = 1 {
StartBlinkBehaviour()
} else if BlinkOrSquint = -1 {
EyeSquint(3,true,irandom_range(40,70))
}
file_delete("new vision2.txt")
}

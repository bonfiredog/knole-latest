///PullInColourResult()

if file_exists("new vision.txt") {
VisionResultFile = file_text_open_read("new vision.txt")
ds_list_destroy(CurrentVisionTags)
CurrentVisionTags = ds_list_create()

while (!file_text_eof(VisionResultFile))
   {
   ds_list_add(CurrentVisionTags, file_text_read_string(VisionResultFile))
   file_text_readln(VisionResultFile)
   }
file_text_close(VisionResultFile);
file_delete("new vision.txt")
}

///PullInWeight()

if file_exists("weightfeed.txt") {
Weight = file_text_open_read("weightfeed.txt")
PewterWeight = real(file_text_read_string(Weight))
file_text_close(Weight)
}

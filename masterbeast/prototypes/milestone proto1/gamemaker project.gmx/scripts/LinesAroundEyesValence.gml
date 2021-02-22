if mTiredness.TirednessValue <= 25 {
image_alpha = 0
} else if mTiredness.TirednessValue > 25 and mTiredness.TirednessValue <= 50 {
if Grade = 1 or Grade = 2 {
image_alpha = 0.5
} else {
image_alpha = 0
}
} else if mTiredness.TirednessValue > 50 and mTiredness.TirednessValue <= 75 {
if Grade = 1 or Grade = 2 or Grade = 3 {
image_alpha = 0.5
} else {
image_alpha = 0
}
} else if mTiredness.TirednessValue > 75 and mTiredness.TirednessValue <= 100 {
if Grade = 1 or Grade = 2 or Grade = 3 or Grade = 4 {
image_alpha = 0.5
} else {
image_alpha = 0
}
}



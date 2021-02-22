///QuickBagSwing()

if QuickSwing = true {
if QuickSettleCurrent < QuickSwingSettleMax {
if QuickSwingDir = "left" {
if QuickSwingMod > (-30 + (5 * QuickSettleCurrent)) {
QuickSwingMod -= 10
} else {
QuickSettleCurrent += 1
QuickSwingDir = "right"
}
} else if QuickSwingDir = "right" {
if QuickSwingMod < (30 - (5 * QuickSettleCurrent)) {
QuickSwingMod += 10
} else {
QuickSettleCurrent += 1
QuickSwingDir = "left"
}
}
} else {
if FinishedSwinging = false {
if QuickSwingMod != 0 {
if QuickSwingMod > 10 {
QuickSwingMod -= 10
} else if QuickSwingMod < -10 {
QuickSwingMod += 10
} else {
QuickSwingMod = 0
}
} else {
FinishedSwinging = true
}
} else {
QuickSwingMod = 0
QuickSwingDir = "left"
QuickSwingSettleMax = 0
QuickSettleCurrent = 0
FinishedSwinging = false
QuickSwing = false
}
}
}

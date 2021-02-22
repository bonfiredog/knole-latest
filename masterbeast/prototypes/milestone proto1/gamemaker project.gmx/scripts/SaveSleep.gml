if mTiredness.CurrentSleepTime <= 864000 {
mTiredness.CurrentSleepStatus = "poor"
} else if mTiredness.CurrentSleepTime > 864000 {
mTiredness.CurrentSleepStatus = "decent"
}

if mTiredness.CurrentSleepStatus = "decent" {
mTiredness.TirednessBase = mTiredness.TirednessBase - (mTiredness.CurrentSleepTime / 1000)
} else if mTiredness.CurrentSleepStatus = "poor" {
mTiredness.TirednessBase = mTiredness.TirednessBase + (mTiredness.CurrentSleepTime / 1000)
}

mTiredness.CurrentSleepTime = 0
mTiredness.CurrentSleepStatus = ""

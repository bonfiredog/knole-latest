/// CreateMoonManual

with mWorldController {
TonightsMoon = instance_create(x,y,mMoon)
TodayMoonCreated = true
StartWithMoon = true
with TonightsMoon {
CurrentDirection = random_range(60,120)
Direction = CurrentDirection
x = mCentreOfRoom.x + lengthdir_x(DistanceFromCentreOfRoom,Direction)
y = mCentreOfRoom.y + lengthdir_y(DistanceFromCentreOfRoom,Direction)
SetMoonPowerAndIntensity()
MoonTest = instance_create(x,y,mMoonVisible)
}
}

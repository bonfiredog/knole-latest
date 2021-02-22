///WellUpDrop(type,size,colour)

do {
GetBounds()
PosX = irandom_range(LeftBound,RightBound)
PosY = irandom_range(TopBound,BottomBound)
} until position_meeting(PosX,PosY,self)
CreateDrop(PosX,PosY,argument0,argument1,self,argument2,0,"welling",mLiquidSubController.LiquidWellRate)
NumberPresent += 1


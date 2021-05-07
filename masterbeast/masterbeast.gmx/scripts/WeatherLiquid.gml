///WeatherLiquid(currentornext,heavyorlight)

Rate = argument0
if argument1 = "heavyrain" {
Intensity = 1
} else if argument1 = "lightrain" {
Intensity = 2
}

//Create splashes on the creature's body, depending on the intensity.

if Rate = "current" {
if CurrentTimer > 0 {
CurrentTimer -= 1
} else if CurrentTimer = 0 {
Region = choose(oHead1,oHead2,oHead3)
SplashX = random_range(Region.LeftBound,Region.RightBound)
SplashY = random_range(Region.TopBound,Region.BottomBound)
CreateParticleSplash(SplashX,SplashY,2,ps_shape_ellipse,ps_distr_gaussian,c_black,15,30,0.05,0.1,20,160,20,50,5,10)
TwitchIfNearBP(SplashX,SplashY,300)




//Clean Surface And Dirt 
mCreatureController.Dirt -= 1
if position_meeting(SplashX,SplashY,oTabooLayer1) {
oTabooLayer1.Health -= 0.01
} 
if position_meeting(SplashX,SplashY,oTabooLayer2) {
oTabooLayer2.Health -= 0.01
} 
if position_meeting(SplashX,SplashY,oTabooLayer3) {
oTabooLayer3.Health -= 0.01
} 

surface_set_target(mHeadDrawer.BodyWipeSurface)
draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)
draw_sprite_ext(sWipe,0,SplashX,SplashY,0.45,0.45,random(360),c_white,1)
draw_set_blend_mode(bm_normal)
surface_reset_target()

surface_set_target(mHeadDrawer.TabooSurface)
draw_set_blend_mode(bm_subtract)
draw_set_color(c_white)
draw_sprite_ext(sWipe,0,SplashX,SplashY,0.45,0.45,random(360),c_white,1)
draw_set_blend_mode(bm_normal)
surface_reset_target()


if mDriveCollectionMaster.InRitual = false {
ChangeEmotion("anger","up",0.01,0.03)
mCreatureController.BaseStress += 0.03
mCreatureController.BaseResistance += 0.03
}
CurrentTimer = irandom_range(150,600) * Intensity
}
} else if Rate = "next" {
if NextTimer > 0 {
NextTimer -= 1
} else if NextTimer = 0 {
Region = choose(oHead1,oHead2,oHead3)
SplashX = random_range(Region.LeftBound,Region.RightBound)
SplashY = random_range(Region.TopBound,Region.BottomBound)
CreateParticleSplash(SplashX,SplashY,2,ps_shape_ellipse,ps_distr_gaussian,c_black,15,30,0.05,0.1,20,160,20,50,5,10)
TwitchIfNearBP(SplashX,SplashY,300)
if mDriveCollectionMaster.InRitual = false {
ChangeEmotion("anger","up",0.01,0.03)
mCreatureController.BaseStress += 0.03
mCreatureController.BaseResistance += 0.03
}
NextTimer = irandom_range(150,600) / Intensity
}
}









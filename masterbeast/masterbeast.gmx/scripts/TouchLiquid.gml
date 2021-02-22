///TouchLiquid(type)

if AmountForward(60) and instance_exists(mDebug) = false {
with mInterfaceController {
if HandWet = false {
HandWet = true
}
Sound = choose("wetmouth1","wetmouth2","wetmouth6","wetmouth7")
ex_audio_set_position(Sound,mouse_x,mouse_y,0)
ex_audio_set_volume(Sound,BothVolMod(0.08),0)
ex_audio_set_pitch(Sound,random_range(0.8,1.2))
ex_audio_play(Sound,0)
if mCreatureController.Alive > 40 {
HandWetType = argument0
} else {
HandWetType = choose(argument0,argument0,"blood")
}
if HandWetType = "blood" {
HandWetColour = BloodLiquidColour
} else {
HandWetColour = c_black
}
WriteToLog("Hand wet with liquid: " + HandWetType)
ResetTimer = 600
SmearAmount = irandom_range(20,30)
SmearAmountMax = SmearAmount
SmearBaseSize = random_range(0.3,0.4)
}
CreateStain(30,0,360,15,25,0.25,0.05,0.1,0.1,0.2,mInterfaceController.HandWetColour,mouse_x,mouse_y)
CreateParticleSplash(mouse_x,mouse_y,sprite_get_width(mFinger) / 2,ps_shape_ellipse,ps_distr_gaussian,mInterfaceController.HandWetColour,35,45,0.05,0.17,0,360,30,45,5,40)
}

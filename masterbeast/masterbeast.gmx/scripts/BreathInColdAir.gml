///BreathInColdAir(which?nose/mouth/both)


if mWorldController.ThisPeriodTemp <= 15 and mBehavioursDeliberative.PercentForward > 4 {

with mCreatureController {

switch argument0 {
case "nose":
part_type_direction(BreathPart,210,330,2,1)
part_type_speed(BreathPart,2,5,0,0)
part_type_size(BreathPart,0.2,0.8,0.2,0)
part_emitter_region(PartBreathSys,BreathEmit,oTLNostril.x - (oTLNostril.sprite_width / 2),oTLNostril.x + (oTLNostril.sprite_width / 2),oTLNostril.y - (oTLNostril.sprite_height / 2),oTLNostril.y + (oTLNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_emitter_region(PartBreathSys,BreathEmit,oTRNostril.x - (oTRNostril.sprite_width / 2),oTRNostril.x + (oTRNostril.sprite_width / 2),oTRNostril.y - (oTRNostril.sprite_height / 2),oTRNostril.y + (oTRNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_emitter_region(PartBreathSys,BreathEmit,oMLNostril.x - (oMLNostril.sprite_width / 2),oMLNostril.x + (oMLNostril.sprite_width / 2),oMLNostril.y - (oMLNostril.sprite_height / 2),oMLNostril.y + (oMLNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_emitter_region(PartBreathSys,BreathEmit,oMRNostril.x - (oMRNostril.sprite_width / 2),oMRNostril.x + (oMRNostril.sprite_width / 2),oMRNostril.y - (oMRNostril.sprite_height / 2),oMRNostril.y + (oMRNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
break;
case "mouth":
part_type_direction(BreathPart,100,260,2,1)
part_emitter_region(PartBreathSys,BreathEmit,oMouthCentre.x - (oMouthCentre.sprite_width / 2) - 10, oMouthCentre.x,oMouthCentre.y,oMouthCentre.y + (oMouthCentre.sprite_width / 2) - 5,ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_type_direction(BreathPart,-80,80,2,1)
part_emitter_region(PartBreathSys,BreathEmit,oMouthCentre.x, oMouthCentre.x + (oMouthCentre.sprite_width / 2) + 10,oMouthCentre.y,oMouthCentre.y + (oMouthCentre.sprite_width / 2) - 5,ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
break;
case "both" :
part_type_direction(BreathPart,100,260,2,1)
part_emitter_region(PartBreathSys,BreathEmit,oMouthCentre.x - (oMouthCentre.sprite_width / 2) - 10, oMouthCentre.x,oMouthCentre.y,oMouthCentre.y + (oMouthCentre.sprite_width / 2) - 5,ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_type_direction(BreathPart,-80,80,2,1)
part_emitter_region(PartBreathSys,BreathEmit,oMouthCentre.x, oMouthCentre.x + (oMouthCentre.sprite_width / 2) + 10,oMouthCentre.y,oMouthCentre.y + (oMouthCentre.sprite_width / 2) - 5,ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_type_direction(BreathPart,210,330,2,1)
part_type_speed(BreathPart,2,5,0,0)
part_type_size(BreathPart,0.2,0.8,0.2,0)
part_emitter_region(PartBreathSys,BreathEmit,oTLNostril.x - (oTLNostril.sprite_width / 2),oTLNostril.x + (oTLNostril.sprite_width / 2),oTLNostril.y - (oTLNostril.sprite_height / 2),oTLNostril.y + (oTLNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_emitter_region(PartBreathSys,BreathEmit,oTRNostril.x - (oTRNostril.sprite_width / 2),oTRNostril.x + (oTRNostril.sprite_width / 2),oTRNostril.y - (oTRNostril.sprite_height / 2),oTRNostril.y + (oTRNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_emitter_region(PartBreathSys,BreathEmit,oMLNostril.x - (oMLNostril.sprite_width / 2),oMLNostril.x + (oMLNostril.sprite_width / 2),oMLNostril.y - (oMLNostril.sprite_height / 2),oMLNostril.y + (oMLNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
part_emitter_region(PartBreathSys,BreathEmit,oMRNostril.x - (oMRNostril.sprite_width / 2),oMRNostril.x + (oMRNostril.sprite_width / 2),oMRNostril.y - (oMRNostril.sprite_height / 2),oMRNostril.y + (oMRNostril.sprite_height / 2),ps_shape_ellipse,ps_distr_gaussian)
part_emitter_burst(PartBreathSys,BreathEmit,BreathPart,1)
break;
}

}
}

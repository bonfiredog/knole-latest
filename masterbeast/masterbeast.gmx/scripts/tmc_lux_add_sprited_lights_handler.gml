///tmc_lux_add_sprited_lights_handler(depth)
/*
    this creates a sprited light handler at a specific depth
    if you want to have multiple layers of sprited lights,
    add a handler at the layer/depths you want the batch to render
    
    A handler will render the current content of the sprited lights array batch
    
    lets say you want to have lights from 0 to -10000
    
    you place a handler at depthe -10000
    you instance that add sprited lights do so in the draw. assuming that the instances creeating the lights
    for the -10000 depth layer are themselves located below that say at depth -1000
    
    then you can add another handler at depth -20000
    and your instances from depthe -1001 to -20000 add lights to be handled by that layer. so you can have multiple levels of lights that way
    
    There is a handler already included in the main light controller. this function adds suplemental handlers but does not cange the default handler
    which processes the batch at -10000000
    
    sprited light handlers as not persitent so you have to recreate them when the room starts
    you can also clear them. destroy them with
    tmc_lux_clear_sprited_lights_handlers()
*/
with(instance_create(0,0,tmc_lux_sprited_lights_handler_obj))
{
    depth = argument0;
}

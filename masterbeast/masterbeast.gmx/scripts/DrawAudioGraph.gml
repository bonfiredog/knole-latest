///DrawAudioGraph (to be placed in a Draw event)
///DRAW - Disable drawing in create event!
if (mCreatureController.DebugMicGraph) {
    for (var i = 0; i < ds_list_size(mCreatureController.Graph);i++) {
    
        if (i/20 <= window_get_width()) {
            draw_point(i/20,600-(ds_list_find_value(mCreatureController.Graph,i)/32));
        } else {
            ds_list_delete(mCreatureController.Graph,i);
        }
    
    }
}

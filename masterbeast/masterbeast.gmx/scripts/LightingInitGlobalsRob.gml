///LightingInitGlobalsRob()
/*
    this function is called by the lights controller which is placed in a boot room (See READ_ME_NOW) so it's called when the game starts. 
    You dont need to call this yourself.
    
    you can call any of these scripts to change the settings to configure the system to your need 
    
    or make your changes here to fit your game. But make a clone of the function as backuop because this 
        function will be over-written if you update the asset.
*/

//how many anchors in the view to keep tracks of lights. 10 by 10 grid at 20 lights per celss
tmc_lux_set_anchors(10,10,20)
//init the system with 1000 lights possible in view
tmc_lux_init_lights(1000);
//turn the system on
tmc_lux_set_lights_enabled(1);
//default global ambient
tmc_lux_set_global_ambient(c_white,.8);


//setup the sprited light sub system
tmc_lux_set_sprited_lights_enabled(1);
//uses surface
tmc_lux_set_sprited_lights_surface_enabled(1);
//turn off android compatibility mode
tmc_lux_set_sprited_lights_compatibility_mode(0);

//setup the sprited shadows sub system
tmc_lux_set_sprited_shadows_enabled(1);
tmc_lux_set_sprited_shadows_power(.5);

//the noise system for the natural light flicker form XOT, not required
tmc_lux_noise_init();

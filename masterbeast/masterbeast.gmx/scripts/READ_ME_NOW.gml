///READ_ME_NOW
/*
    Note:
        WARNING: You Must have a boot room with a delay of 5 steps before proceeding to the actual game room. You CANNOT have the system run from the very first room
        because the system creates surfaces and GameMaker cannot handle creating a surface on the very first draw of the very first room.
        
        If you did not include the demo and preview content (folders) of the asset, you WILL have a hard time... Make sure you include the entire asset
        and delete the Demo folder once you are sure you have everything working. The demo has a multitude of objects that cover all the basics and present solution
        to common hurdles
        
        If you did not include the REQUIRED objects you WILL have a hard time.
        
        If you decide to use your own light controller for the light, do so at your own risk, make sure it does everything the original controller does. there should be no 
        advantage whatsoever in making your own controller or copying everything over to your existing controller. you can control things from your own controller by calling the 
        functions to enable, disable things...
    
    Images:
        All images included are NOT to be used in your game unless approved by The Mojo Collective
        This applies especialy to the ships and the character animation and the skulls. See aknowlegments below for more info
        Other resources are from 3d models off the web distributed as free to use from varous sites HOWEVER you should not use the demo resources in your own game unless 
        you find the (same) source yourself
        The images included are for demonstration purpose only.
        
    Tested to work on Windows ONLY Studio version 1.4.1675 or higher
    
        My android phone cant handle it, shaders dont work on it so I cant test.
        
        Compatibility Support: Turn the lights off on android devices and set the sprited lights to use the screen
        
        
    Please read everything and please browse through the function comments. I spent about as much time commenting this as implementing it!!
    
    Where can I get compatible assets for the game (Difuse, Normals,etc)?
        Off the web!  The preview tool has options to convert normals if flipped
        
        Using 3d models as source for the 2d images.
            You can use a 3d models and use this tool
                http://gmc.yoyogames.com/index.php?showtopic=397461 to load the obj generate the vertext normals and save a d3d
                   See the Accutrans tool in topic to convert many file types to OBJ
                Load the model in gmmodel fix
                rotate it so it faces the right way, with it's top point to +z
                Place the camera on top of the model
                Do a facet sort
                Generate the vertex notmals,
                Save as d3d. you may have to UV mapp the model in uv mapper first and flip the texture uv in the tool
            after generating the model lighting in gmmodelfix you can use this tool
                http://gmc.yoyogames.com/index.php?showtopic=598939
            Click to open the menu
            Load the d3d model
            Load the texture
            Scale if needed to fit the size you want
            Take a snapshot of the diffuse
            Convert to 2d lighting normal
            Take a snapshot to get the image
            Add snapshots to your game
            
            the top down demo used this method
            
            You can also use Sprite Lamp, the plarformer demo used this method
        
    Sprited Light Subsystem:
        Please read comments tmc_lux_add_sprited_light() for information on that sub system
    
    The Setup:
        You drop the main ligths controller in your room. preferably in a boot room (it follows in every room so you dont need one in each room)
        
        You make objects that will be lighting aware, adding the required variables and calling the required scripts;
            Please see tmc_lux_demo_ship_obj and others for setting up an object to enable drawing with lights
            The demo has objects with different types of setup which can make your life easier
    
        You make objects that emit light, adding the required variables and calling the required scripts
            Please seet the tmc_lux_demo_light_obj and others for setting up lights
            
        I made various example demo objects, most use the sprite image index 0,1,2,3 for diffuse,normal,specula and occlusion, but the system is not limited to this setup, it is the
        object responsibility to setup the data and set the right variables. The platform animated character is more complex with all the textures in separate sprites
         
            Most objects are similar in nature. 
                -they get the sprite/background texture for the normal, the specular and the occlusion, varies on the shader used and sprites available
                -they get the uv position for all involved textures and the rendering sprite
                -they set the ambient color for that object, there is a global ambient and a per object ambient you can tweak
                -they set the z for the object (objects have a z value so they can be layered for light rendering
                -on draw, if in view, they set the shader to use and draw themselves
        
                    
            The normal texture are usually made from blender or spritelamp or whatever tool. make sure the rgb in the image match the color for the bumping in the sprite 1
                some tools reverse the y. The sghaders are based on the most common default setting for the normal texture map
            
            The Specular texture adds to the reflextion, shinyness, black image is no change in reflection, white is full ramping, a black suare is equivalent to not using specular
            
            The Occlusion texture removes from the light, enforcing no lighting in the black areas and allowing full lighting in white areas, dampening in the grey areas, a
                full white square image is equivalent to not using the occlusion
            
            If you can get away with the look you want with the most minimal version of the shaders, it is encouraged to do so.
            
            The parenting system used in the demo is not required.
        
        get uvs? Why am I asking for the sprite uvs on the texture page?
            This allows not having to use the set for 3d flag in the image settings. As long as you have the No Cropping option set in the texture group
            If you dont have pro, you need to set the used for 3d in the sprite options because cropping is on in the texture group
            
            The exception to the rule for this to work is your drawing cannot have repeats or nevative uvs. if that is the case you must set the Use For 3d flag
            
            For the demo I set the use for 3d since there is no way of knowing your setup is right
            
        The wrapper scripts to enable drawing with the shader
            Because the amount of data required by the shader can be overwhelming, I setup 4 scripts, one for each shader types
            these scripts work under the assumptions you are using the member variables described therein, read the comment for each of them
            if an object is not using the full shader you dont need to setup the extra textures and uv arrays
            
        The wrapper light engine
            The shaders are hard coded to use a maximum of 20 lights. and they do NOT have a loop or anything that have a risk of not being supported when the shader is "unrolled"
                in fact the unrolling of the shader, should yield little to no changes
            Also 20 ligths per drawing of each sprite is really enough. anything more and you would have performance issues
            
            Because the shaders are limited to 20 light and because you would likely have 100's of light emmiter in the game, I created a wrapper engine that is efficient in 
                segregating the lights into smal areas.
                
            How it works is a little hard to grasp;
                The main controller creates a light reference up to 1000 in the demo, these reference are array items with a sub array for holding light data. 
                    These array items will will be set to the properties for a light when calling tmc_lux_add_light()
                    Adding a light sets a free light index with the light specs x,y,z light color, strength, fall off and radius and cone settings
                    Adding a light does not add a light instance; it sets a reference (in the array) to the light settings and increases and array index
    
                The Controller also splits the view into a grid of light anchors. 
                    A light anchor will grab up to 20 lights in range of it, by looking at that 1000 lights array from 0 to the last light added
    
                The tmc_lux_set_SHADER_NAME_spec functions are called by the object that wants to draw with lights enabled will ask for the closest anchor. 
                    from that anchor it will get up to 20 lights and sent those lights to the shader
                
                Then you draw your sprites as you normaly would
                
                each step begin, the controller resets the light arry index to 0, it does not delete the light instance, but it means the light added only lasts a step
                each step/end step, your light casters must call tmc_lux_add_light/_cone() to reposition their lights
                each begin draw, the light anchors grabs the lights in their range
                each draw, your light aware objects are drawn using the lighs from the closest light anchor
                
            you can change the number of lights in the system if you wish but the default seems to be good enough
            
        the sprite representation of the ligths in the demo do not reflect 100% the shader setting
        
        shaders and pre-requisties:
            tmc_lux_set_norm_shdr enables the shader to draw using only the normal map texture
            tmc_lux_set_norm_spec_shdr enables the shader to draw using the normal map texture and a specutal texture
            tmc_lux_set_norm_occ_shdr enables the shader to draw using using the normal map texture and the ambient occlusion
            tmc_lux_set_norm_spec_occ_shdr enables the shader to draw using using the normal map texture, a specular map texture and the ambient occlusion
            
            all 4 function have a pre-requise for the textures member variables and the texture uvs member variables.
                all 4 shaders use instance data, image_angle to pass the shader and x, y for finding the relevant lights
                refer to the set_shader scripts comment for the pre requisites. which I set in the create in the demo.
            
            There is no shader SET function for drawing a sprite or background individually at a location not specified by an instance
            there are just so many arguments which would make understanding the concept more difficult.
            
            you can write your own if you need to, cloning the script and passing 14 argument (worst case)
            
            Or you can simply store the instance variable into temps and temporarely set the instance variables to the location of the sprite you want to draw        
                
        Mix with 3D:
            The shader works with 3d models but you may have to set the Use for 3d especialy if you have repeating textures or inverted textures (like the demo block)
            The shader will not abide to the 3d object's native Z 
            I added my own Z parameter to overcome this which also allows you to place (2d,3d) objects (or redering) at different altitudes 
            so they can have lights above and below them, currently the virtual Z is 0 in the demo objects
    
        
        Limitations:
            The demo is setup with a possible 1000 lights with 100 anchors each with a maximum of 20 lights (20 is too much you can set it to 10 in the global init function which is more
            reasonable).
            
            This limit is for lights visible in view. you can have as many lights as you want but 1000 is the hard in view limit... which is way beyound what any PC can do.
            
                       
            Essentially this means you can have 1000 lights (in view) with many instances drawing with their own set of lights but each instance (render) is really locked with a maximum of 20 lights
            
            So a Ship or Character on one side of the screen can be rendered with 20 lights while another character on the other side of the screen can render with
            its own maybe different set of lights. Small objects perform better than large ones as they will get different lights from different regions/anchors. 
            
            However if a large sprite covers the entire screen, like the ground in the demo, it will use the 20 lights it got from it's closest anchor... And so some lights may seem to disapear
            for the large onbject while the other instances seem to be working well.
            
            I added 2 background rendering object which bypass this limitation but looses in rendering speed
        
        Cost Per Render (Light Aware Rendering, objects calling calling tmc_lux_set_SHADERNAME_shdr
            Texture Swaps:
                If Used for 3d is ON, 1 swap per instance
                else 0 to 1 swap per instance depending if the current tpage holds the 3 2 to 4 images needed (make sure the diffuse, normal, spec and occlusion images are on the same page)
            Hidden Swaps:
                Game Maker only counts the swaps (when show_debug_overlay(1) is used) made in texture slot 0. the difuse (sprite drawn) goes in slot 0, the specular, diffuse and occlusion for in other slots
                    Make sure all your 2-4 required images for diffuse, normal, specular, occlusion are on the same texture page
            
            Batches
                1 batch per instance. shader_set() and shader_reset() makes a single batch. See the example demo objects for 
                
        Acknowledgment:
            this system is made possible from the initial work from xygthop3 (http://gmc.yoyogames.com/index.php?showuser=42927) on the
            2D Normals Lights Specular With Rotation shader (http://gmc.yoyogames.com/index.php?showtopic=589259) with the source modified in the following way
            Added cone support
            Added range cutoff support
            Added multiple light support
            Fixed specular lighting
            Added Occlusion texture support
            Fixed the normal texture color mapping
            Added the remaping of the UVs for support for (Not) Used For 3d.
            
            Labrat of the Mojo Collective for the caharacter animation and skulls
            Xot for his helper scripts on gmlscripts.com and his help with the shader and the natural light flicker system
            Ian Friis of The Mojo Collective for his work on Space Ranger ASK from which inspired this engine
            The guys at The Mojo Collective for feedback and support
            
            The debug cone draw is made possible by TheSnidr (http://gmc.yoyogames.com/index.php?showuser=32295) Who helped figure out how to get the ranged from the cone settings. Thanks Man
        
   The Preview Tool:
        The preview tool allows you to load the a files from your disk and preview it. it also allows you to fix the normals if the color scheme is inverted
        
        Fixing the normal:
        carefully look at the object with the light close to the ground (use mouse wheel) and notice that lighting. often you will fint images that light good east and west
        but are inverted nother and south. it can easilly be overlooked because it almost works. hit the Invert Green to fix that. other inverts and swaps are provided but I 
        rareley needed them
        
        Then buttons from the right are the file open button. on the left are the enable buttons, to enable showing the diffuse or a rectangle, enable the normal shader, then 
        add on the specular mode, then the occlusion mode.... when the normal shader is off you the first column on the left allows you to check the images for all the textures
        the buttons are grouped next together by gategory
        
        [1 View On Off] [2 On Off] [3 Load Diffuse] -> 1 Shows the diffuse image, 2 draw with the diffuse or a blnak rectangle, 3 load the diffuse image
        [1 View On Off] [2 On Off] [3 Load Normal] -> 1 Show the normal texture whe shader is off (enabling tools), 2 turn off normal shader, 3 load the normal
        [1 View On Off] [2 On Off] [3 Load Specular] -> 1 Show the specular when shader is off, 2 add the specular to the redering, 3 load the specular
        [1 View On Off] [2 On Off] [3 Load Occlusion] -> 1 Show the occlusion map when shader is off, 2 add occlusion to the render, 3 load the occlusion map
        [Ambient Color] -> set the color and power for the ambient light
        [Light] -> Change the settings for the light at the mouse
        [Z, Range, Fall Off] -> set the Z, range and the fall off for the mouse light (mouse wheel, shift mouse wheel, ctrl mouse wheel)
        [fx,fy,fz,co] ->Facing vector for the cone and the cone cut off.
        
        [*Invert] -> [All][Red][Green]{Blue] inverts the color pixels Usualy green is the one you want. 
            red is x, green is y, z is blue, so if your lighting is inverted on X flip the red, if it's inverted on y, flip the green
            
        [*Swap] -> [red with green][Blue with read][red with blue], swaps one color with another. not sure if usefull but it's there
        
        * image manipulation functions are only available when the View for an image is on
        
        To access the normal fix tool. Turn off the normal shader with the butten next to the normal file button. Then click the button on the left still to show the normal and 
        the fix tools for the normals
        
        There are other options like generating a lighting normal from a grayscale awhich can be useful
        
        I added other image manipulations such as specular generation and ambient occlusion generation which are purely my inventions and should not be
        considered the way to go in generating those. There is no way to automatically generate those from an image but it can help in a crunch
        
        Tip, you can use the image manipulatore on any image in the set. You can generate a normal from the diffuse. Save the changes to file. Hit the undo button to reset 
        the original image and load the new image from file into the proper slot.
    
    The Patformer Demo:
        The platformer is a pretty decent engine of its own right.
        It supporst slopes and moving platforms
        It supports multiple animations in the form of a per instance state machine. Each animation/state is it's own instance with code related to the state of the character
        The platform system conssts maily of 4 blocks. a floor which can be rotated in the room editor for slopes, a wall, a platform edge and wall top.
            a floor is in charge of vertical collisions.
            walls are in charge of horizontal collisions
            The edge pieces are used to "cap" a floor so have horizontal collision ust on the edge of the platform
            Th edge piece are used on top and bottom of wall to allow the character to jump on in (like a pillar)
        The triggers are used to turn items on or off. see the switch system which toggles another items based on it's name; see moving platforms and door
        
        Tha main character collision regions are hard coded. if you change the character size you will beed to tweak the various collisions regions used in the end step of the player parent object.
        
*/

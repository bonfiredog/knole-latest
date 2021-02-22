///tmc_lux_safe_surface_create(possible_pre_existing_surface,width,height)
//creates a surface if the passed surface is bad or not the same size

var surf = argument0,
    w = argument1,
    h = argument2;

//it exists
if(surface_exists(surf))
{

    var sw = surface_get_width(surf),
        sh = surface_get_height(surf);
    //not same size?  surface_reize was called  
    if(w != sw or h!=sh)
    {
        //this is if, in our use, the application surface was resized, 
        //we need to resize the back buffers... 
        //BUT being super anal I want to make sure the surface is still mine
        //Special case of if our surface got bad, and the other game code made it own surface
        //and so the surface id re-becomes good but wrong
        //So I nuke the other guy (in case the change of size was legit and create a new surface (with a new id)
        //So if there was confusion at least I do not use the other guy's surface
        //hoping he does surface_exists checks as per the proper use, he redos his surface when this happens.

        //recreate it before deleting the other one
        var surf2 = surface_create(w,h);

        //delete it
        surface_free(surf)
        //return new
        surf = surf2;        
    }
}
else
{
    surf = surface_create(w,h);
}
//we failed!
if(!surface_exists(surf))
{
    surf = -1;
}
return surf;

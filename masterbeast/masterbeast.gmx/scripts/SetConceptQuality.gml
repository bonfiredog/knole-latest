///SetConceptQuality(concept,quality,qualityname,qualityvalue,qualitystrength,qualitysource)

with mMemConceptController {

ds_grid_resize(argument0,7,3)

//Remember what was already the value of the quality.
ds_grid_set(argument0,PreviousValue,argument1,ds_grid_get(argument0,QualityValue,argument1))

ds_grid_set(argument0,QualityName,argument1,argument2)
ds_grid_set(argument0,QualityValue,argument1,argument3)
ds_grid_set(argument0,Strength,argument1,argument4)
ds_grid_set(argument0,SourceOfValue,argument1,argument5)

}

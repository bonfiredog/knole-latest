///CreateStimuli(type,valenceforself,intensity,involvesother,valenceforother,triggeredemotions,triggeredemotionsintensity,source)

with mCreatureController {

TypeVal = argument0
ValenceForSelfVal = argument1
IntensityVal = argument2
InvolvesOtherVal = argument3
ValenceForOtherVal = argument4
TriggeredEmotionsVal = argument5
TriggeredEmotionsIntensityVal = argument6
SourceVal = argument7

//Add to the stimuli list.

CurrentSizeOfGrid = ds_grid_height(StimuliList)
CurrentWidth = ds_grid_width(StimuliList)
CurrentSizeOfGrid += 1
ds_grid_resize(StimuliList,CurrentWidth,CurrentSizeOfGrid)

ds_grid_set(StimuliList,Type,CurrentSizeOfGrid,TypeVal)
ds_grid_set(StimuliList,ValenceForSelf,CurrentSizeOfGrid,ValenceForSelfVal)
ds_grid_set(StimuliList,Intensity,CurrentSizeOfGrid,IntensityVal)
ds_grid_set(StimuliList,InvolvesOther,CurrentSizeOfGrid,InvolvesOtherVal)
ds_grid_set(StimuliList,ValenceForOther,CurrentSizeOfGrid,ValenceForOtherVal)
ds_grid_set(StimuliList,TriggeredEmotions,CurrentSizeOfGrid,TriggeredEmotionsVal)
ds_grid_set(StimuliList,TriggeredEmotionsIntensity,CurrentSizeOfGrid,TriggeredEmotionsIntensityVal)
ds_grid_set(StimuliList,Source,CurrentSizeOfGrid,SourceVal)
}


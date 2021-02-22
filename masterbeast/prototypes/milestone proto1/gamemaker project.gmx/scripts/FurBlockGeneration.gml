//If the first fur block has been completed, and finished generating...
if CreatedFirstFurBlock = true and mFurBlock.FinishedGenerating = true {

/* CREATING THE FIRST ROW */
if FirstRowCompleted = false {

if NumberOfFurBlocksGenerated < global.TotalDuplicationsPerRow {
with oFurBlockFur {
//If a fur piece is within the FurBlock (i.e. it is in the 'root' block)...
if x <= mFurBlock.sprite_width {
//...Copy it and move it along the row the number of 'spaces' required.
ThisCopy = instance_copy(true)
ThisCopy.x = x + (mFurBlock.sprite_width * mFurGeneration.NumberOfFurBlocksGenerated)
ThisCopy.direction = point_direction(x,y,mGeneralCentrePoint.x,mGeneralCentrePoint.y)
//Deactivate the copy, hiding it from view now that it is positioned. This will not effect the 'root' block, meaning that we can use it again.
instance_deactivate_object(ThisCopy)
}
}
//Increase the number of fur blocks generated.
NumberOfFurBlocksGenerated = NumberOfFurBlocksGenerated + 1
} else if NumberOfFurBlocksGenerated >= global.TotalDuplicationsPerRow {
FirstRowCompleted = true
NumberOfFurBlocksGenerated = 1
}
/* CREATING SUBSEQUENT ROWS */

} else if FirstRowCompleted = true {

if NumberOfRowsGenerated < global.TotalRows {

if RowDone = true {
with oFurBlockFur {
//If the fur is part of our 'root block'...
if y <= mFurBlock.sprite_height and x <= mFurBlock.sprite_width {
//...Copy it and move it down the number of 'rows' required. Mark it as in the root so 
//that we can deactivate it later.
ThisCopyRoot = instance_copy(true)
ThisCopyRoot.InRoot = true
ThisCopyRoot.y = y + (mFurBlock.sprite_height * mFurGeneration.NumberOfRowsGenerated)
ThisCopyRoot.direction = point_direction(x,y,mGeneralCentrePoint.x,mGeneralCentrePoint.y)
//We don't deactivate the copy, as we need it to generate the row. However, we won't deactivate the 'root' block either, as it is useful to use 
//as a generator for subsequent rows. This will only increase the number of 'blocks' active by 1, as each row is deactivated each time they have finished 
//generating.
}
}
RowDone = false
ThisRowBlocksGenerated = 1
}

//Reset the row done function. This allows us to get on with making this new row.



if RowDone = false {
if ThisRowBlocksGenerated < global.TotalDuplicationsPerRow {
with oFurBlockFur {
//If a fur piece is in the 'root block' of the current row...
if y >= (mFurBlock.sprite_height * mFurGeneration.NumberOfRowsGenerated) {
//Copy and move it along, as before.
ThisCopy = instance_copy(true)
ThisCopy.x = x + (mFurBlock.sprite_width * mFurGeneration.ThisRowBlocksGenerated)
ThisCopy.direction = point_direction(x,y,mGeneralCentrePoint.x,mGeneralCentrePoint.y)
instance_deactivate_object(ThisCopy)
}
}
//Update the block count in this row.
ThisRowBlocksGenerated = ThisRowBlocksGenerated + 1

//When we have finished this row, update the number of rows, set the row as done (which allows a new 'root' block to be generated next step)
//and deactivate the 'root' block for this row. Can this last thing be done? I'm not sure in this current setup.
} else if mFurGeneration.ThisRowBlocksGenerated >= global.TotalDuplicationsPerRow {
NumberOfRowsGenerated = NumberOfRowsGenerated + 1
with oFurBlockFur {
if InRoot = true {
instance_deactivate_object(self)
}
}
RowDone = true
}
}

//We now replay this code, moving the 'root block' down via copy, using that to generate a new row, and then deactivating the entire row.


//Once all the rows are generated and deactivated, we can tell the ObjectViewDeactivator that it is ready to shine. This Generation object can then be deleted.
} else if NumberOfRowsGenerated >= global.TotalRows {
NumberOfFurBlocksGenerated = 0
global.WholeFieldGenerated = true
instance_destroy()
}

}
}


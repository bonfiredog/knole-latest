///WriteDSGridToTextFile(id, fname)

Grid = argument0
FName = argument1

ThisFile = file_text_open_append(FName)
NumberOfRows = ds_grid_height(Grid)
NumberOfColumns = ds_grid_width(Grid)

//Write the title of the grid at the top of the file.
file_text_write_string(ThisFile,string(Grid))
file_text_writeln(ThisFile)

//Go through each line of the ds_grid, writing the values in each column to a text file,
//before closing the text file.

for (i = 0; i < (NumberOfRows - 1); i++) {

for (e = 0; e < (NumberOfColumns - 1); i++) {
file_text_write_string(ThisFile,
string(ds_grid_get(Grid,e,i)))

file_text_write_string(ThisFile, "  ")
e += 1
}

file_text_writeln(ThisFile)
i += 1
}

file_text_close(ThisFile)







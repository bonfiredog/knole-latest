///CopyConcept(grid,name,file)

Grid = argument0
Name = argument1
File = argument2

file_text_writeln(File)
file_text_writeln(File)
file_text_write_string(File,Name)
file_text_writeln(File)
file_text_write_string(File,"=============")
file_text_writeln(File)
file_text_write_string(File,"Importance: " + string(ds_grid_get(Grid,2,1)))
file_text_writeln(File)

for (i = 2; i <= (ds_grid_height(Grid) - 1); i++) {
Name = ds_grid_get(Grid,0,i)
Value = ds_grid_get(Grid,1,i)
Strength = ds_grid_get(Grid,2,i)
PreviousV = ds_grid_get(Grid,3,i)
CandidateV = ds_grid_get(Grid,4,i)
CandidateS = ds_grid_get(Grid,5,i)
Source = ds_grid_get(Grid,6,i)

file_text_write_string(File,Name + ": " + string(Value) + ", " + string(Strength) + ", " + string(PreviousV) + ", " + string(CandidateV) + ", " + string(CandidateS) + ", " + string(Source))
}

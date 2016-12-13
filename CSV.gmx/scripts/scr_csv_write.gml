///scr_csv_write(dataArray,destFile)
var csvFile = file_text_open_write(working_directory+"export.csv");
if csvFile == -1
{
    show_message("Something went wrong! Aborting script!");
}
var c = array_height_2d(argument0);
var str;
for (var i=0;i<c;i++)
{
    str = "";
    for (var j=0;j<array_length_2d(argument0,i);j++)
    {
        str += '"' + string(argument0[i,j]) + '"';
        str += ",";
    }
    file_text_write_string(csvFile,str);
    file_text_writeln(csvFile);
}
file_copy(working_directory+"export.csv",argument1);
file_text_close(csvFile);

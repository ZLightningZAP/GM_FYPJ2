///scr_csv_read(file)
//change file to the directory of a file, it copies it into the games working directory (get_open_filename()?)
//returns -1 on an error
var csvArr, lineText, csvFile, substr, field, tstr, c, lineNumber, pos;
file_copy(argument0,working_directory+"file.csv");
csvFile = file_text_open_read("file.csv");
if csvFile == -1
{
    show_message("Somethign went wrong. The file cannot be opened");
    return -1;
}
lineNumber = 0;
while !file_text_eof(csvFile)
{
    lineText = file_text_readln(csvFile);
    field = 0;
    c = string_count('"',lineText);
    repeat c/2
    {
        tstr = string_delete(lineText,string_pos('"',lineText),1);
        tstr = string_delete(tstr,string_pos('"',tstr),string_length(tstr));
        if string_pos(",",tstr) == 1
        {
            tstr = string_delete(tstr,1,1)
        }
        csvArr[field,lineNumber] = tstr;
        field++;
        lineText = string_delete(lineText,1,string_pos('"',lineText));
        lineText = string_delete(lineText,1,string_pos('"',lineText));
    }
    lineNumber ++
}
file_text_close(csvFile);
file_delete(working_directory+"file.csv");
return csvArr;

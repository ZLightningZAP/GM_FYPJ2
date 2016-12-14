//Function for Reading
if(file_exists("Config,sav"))
{
    ini_open("Config.sav");
    //Writing the setting variables
    global.Audio = ini_read_real("Settings","Audio",0);
    global.Brightness = ini_read_real("Settings","Brightness",0);
    global.MouseSensitivity = ini_read_real("Settings","MouseSensitivity",0);
    global.ShowCharHP = ini_read_real("Settings","ShowCharHP",0);
    global.ShowMonsterName = ini_read_real("Settings","ShowMonsterName",0);
    global.ShowMonsterLevel = ini_read_real("Settings","ShowMonsterLevel",0);
    global.Voice = ini_read_real("Settings","Voice",0);

    //Writing the player variables
    global.Health = ini_read_real("Player","Health",0);
    global.Level = ini_read_real("Player","Level",0);
    global.Gold = ini_read_real("Player","Gold",0);
    global.Reborn = ini_read_real("Player","Reborn",0);
    ini_close();
}
else
{
    //Do Nothing
}


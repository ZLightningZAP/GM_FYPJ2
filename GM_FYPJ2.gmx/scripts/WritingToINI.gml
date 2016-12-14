//Function for writing
if(file_exists("Config.sav")) file_delete("Config.sav");
ini_open("Config.sav");

//Writing the setting variables
ini_write_real("Settings","Audio",global.Audio);
ini_write_real("Settings","Brightness",global.Brightness);
ini_write_real("Settings","MouseSensitivity",global.MouseSensitivity);
ini_write_real("Settings","ShowCharHP",global.ShowCharHP);
ini_write_real("Settings","ShowMonsterName",global.ShowMonsterName);
ini_write_real("Settings","ShowMonsterLevel",global.ShowMonsterLevel);
ini_write_real("Settings","Voice",global.Voice);

//Writing the player variables
ini_write_real("Player","Health",global.Health);
ini_write_real("Player","Level",global.Level);
ini_write_real("Player","Gold",global.Gold);
ini_write_real("Player","Reborn",global.Reborn);

ini_close();

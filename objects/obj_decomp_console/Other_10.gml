/// @description Register Commands


command_register("help", "Seems like you know how to use it.");
command_register("sv_cheats", "Hax.", [ "value" ]);
command_register("room_goto", "Goes to a specified room");
command_register("room_goto_next", "Goes to the next room");
command_register("room_goto_prev", "Goes to the previous room");
command_register("flag_set", "Sets a specific flag's value", [ "flagID", "value" ]);
command_register("flag_get", "Gets the value for a specific flag", [ "flagID" ]);

command_register("fun_set", "Sets the Fun value", [ "value" ]);
command_register("fun_get", "Gets the Fun value");
command_register("hp_set", "Sets your hp", [ "value" ]);

command_register("stfu", "Stops all Audio");
command_register("create_fake_trophy", "Creates a fake trophy (for debug)", [ "icon_index", "text" ]);
command_register("gold_set", "Sets your gold", [ "value" ]);
command_register("crash_game", "Crashes the game");

command_register("clear", "Clears the output");
command_register("monitor_plot", "Toggles the plot monitor");
command_register("unlock_cam", "Creates an unlocked camera");
command_register("kill", "This will kill you");
command_register("global_set", "Sets a global variable", [ "name", "value" ]);
command_register("global_get", "Gets a global variable", [ "name" ]);
command_register("room_speed", "Sets the room speed", [ "speed" ]);

command_register("save", "Opens save menu");
command_register("battle_start", "Starts a Battle depending on the set battlegroup value", [ "value" ]);
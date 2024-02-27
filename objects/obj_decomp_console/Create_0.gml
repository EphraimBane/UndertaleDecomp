active = false;
insert_mode = false;
carat_visible = true;
carat_xoffset = 0;

alarm[0] = 15;
input_text = "";

history = array_create(0);

commands = array_create(0);
command_name = "";

array_push(commands, new command_def("help", "Gets help", cmd_help, [ "[commandName]" ]));
array_push(commands, new command_def("sv_cheats", "Hax", cmd_sv_cheats, [ "value" ]));
array_push(commands, new command_def("room_goto", "Goes to a specified room", cmd_room_goto, [ "room" ]));
array_push(commands, new command_def("flag_set", "Sets a specific flag's value", cmd_flag_set, [ "flagID", "value" ]));
array_push(commands, new command_def("flag_get", "Gets the value for a specific flag", cmd_flag_get, [ "flagID" ]));
array_push(commands, new command_def("fun_set", "Sets the Fun value", cmd_fun_set, [ "value" ]));
array_push(commands, new command_def("fun_get", "Gets the Fun value", cmd_fun_get, [ ]));
array_push(commands, new command_def("hp_set", "Sets your hp", cmd_hp_set, [ "value" ]));
array_push(commands, new command_def("stfu", "Stops all Audio", cmd_stfu, [ ]));
array_push(commands, new command_def("create_fake_trophy", "Creates a fake trophy (for debug)", cmd_create_fake_trophy, [ "icon_index", "text" ]));

function activate() 
{
	trace("Activating Console");
	active = true;
	input_text = "";
	keyboard_string = "";
}

function deactivate() 
{
	trace("Deactivating Console");
	active = false;
}

active = false;
insert_mode = false;
carat_visible = true;
carat_xoffset = 0;

alarm[0] = 15;
input_text = "";

history = array_create(0);
commands = array_create(0);

commands_history = array_create(0);
commands_history_index = 0;

scroll_offset = 0;

command_name = "";
prev_dir_x = 0;
prev_dir_y = 0;

function activate() 
{
	trace("Activating Console");
	active = true;
	reset_input();
}

function deactivate() 
{
	trace("Deactivating Console");
	active = false;
	reset_input();
}

function reset_input()
{
	commands_history = array_create(0);
	keyboard_string = "";
	input_text = "";
	command_name = "";
	scroll_offset = 0;
}

event_user(0);
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
mouse_click_x = 0;
mouse_click_y = 0;

#macro COMMAND_CONSOLE_HISTORY_MAX 64
function activate() 
{
	trace("Activating Console");
	active = true;
	reset_input();
	commands_history = array_create(0);
}

function deactivate() 
{
	trace("Deactivating Console");
	active = false;
	reset_input();
	commands_history = array_create(0);
}


function reset_input()
{
	keyboard_string = "";
	input_text = "";
	command_name = "";
	scroll_offset = 0;
	commands_history_index = 0;
}

function command_push_history()
{
	array_push(commands_history, input_text);
	if (array_length(commands_history) >= COMMAND_CONSOLE_HISTORY_MAX)
		array_pop(commands_history);
}
event_user(0);
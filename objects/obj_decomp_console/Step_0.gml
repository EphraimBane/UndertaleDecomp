var dir_x = keyboard_check(vk_right) - keyboard_check(vk_left);
var dir_y = keyboard_check(vk_up) - keyboard_check(vk_down);

if (!global.decomp_vars.DevConsoleEnabled)
{
	active = false;
	return;
}

if (keyboard_check_pressed(vk_tab))
{
	if (active)
		deactivate();
	else
		activate();
}


if (!active)
	return;
	
if (prev_dir_y != dir_y && dir_y != 0)
{
	trace($"aa:{array_length(commands_history)} i : {commands_history_index}");
	if (dir_y == 1 && array_length(commands_history) > 0 && array_length(commands_history) > commands_history_index)
	{
		keyboard_string = commands_history[((array_length(commands_history) - 1) - commands_history_index++)];	
	}
	else
	{
		
	}
}

input_text = keyboard_string;

command_name = "";

// Parse input
var temp = string_split(input_text, " ", true);
if (array_length(temp) > 0)
	command_name = temp[0];

var valid_command_name = validCommandName(command_name);

if (keyboard_check_pressed(vk_enter))
{
	if (valid_command_name)
	{
		var index = getCommandDefIndex(command_name);
		var arg_count = array_length(temp) - 1;
		var arg_array = array_create(arg_count > 0 ? arg_count : 0);
		
		if (arg_count > 0)
		{
			arg_array = array_create(array_length(temp) - 1);		
			array_copy(arg_array, 0, temp, 1, arg_count);
		}
		commands_history_index = 0;
		var commandDef = commands[getCommandDefIndex(command_name)];
		command_writeline(input_text);
		trace($"Attempting to execute command: \"{commandDef.displayName}\" with arguments: \"{arg_array}\"");

		script_execute(asset_get_index(commandDef.functionRef), arg_array);
	}
	else
		command_writeline($"Unknown Command: \"{command_name}\"");
	
	command_push_history();
	reset_input();
}
prev_dir_x = dir_x;
prev_dir_y = dir_y;
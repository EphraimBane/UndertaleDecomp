var dir_x = obj_time.right - obj_time.left;
var dir_y = obj_time.up - obj_time.down;

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
	if (dir_y == -1 && array_length(commands_history) > 0 && array_length(commands_history) > commands_history_index)
		keyboard_string = commands_history[commands_history_index++];
	else
	{
		
	}
}

input_text = keyboard_string;

command_name = "";

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
		
		var commandDef = commands[getCommandDefIndex(command_name)];
		command_writeline(input_text);
		asset_get_index(commandDef.functionRef)(arg_array);
		trace($"Attempting to execute command: \"{commandDef.displayName}\" with arguments: \"{arg_array}\"")
	}
	else
		command_writeline($"Unknown Command: \"{command_name}\"");
	
	command_push_function(input_text);
	reset_input();
}
	

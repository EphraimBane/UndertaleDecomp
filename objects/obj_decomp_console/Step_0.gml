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
	
	if (array_length(commands_history) > 0)
	{
		if (dir_y == 1 && commands_history_index + 1 < array_length(commands_history))
		{
			if (commands_history_index == -1)
			{
				commands_textbox = keyboard_string;
			}
			
			keyboard_string = commands_history[++commands_history_index];
		}
		else if (dir_y == -1)
		{
			if (commands_history_index > 0)
			{
				keyboard_string = commands_history[--commands_history_index];	
			}
			else
			{
				commands_history_index = -1;
				keyboard_string = commands_textbox;
			}
		}
	}
}

if (prev_dir_x != dir_x && dir_x != 0)
{
	if (dir_x == 1)
	{
		scroll_offset = min(scroll_offset + 1, max(array_length(history) - SCROLL_MIN_ENTRIES_SHOWN, 0));
	}
	else if (dir_x == -1)
	{
		scroll_offset = max(scroll_offset - 1, 0);
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
		commands_history_index = -1;
		commands_textbox = "";
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
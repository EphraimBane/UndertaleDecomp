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
		script_execute(commandDef.functionRef, arg_array);
		trace($"Attempting to execute command: \"{commandDef.displayName}\" with arguments: \"{arg_array}\"")
		
		keyboard_string = "";
		input_text = "";
		command_name = "";
	}
	else
	{
		command_writeline($"Unknown Command: \"{command_name}\"");
		keyboard_string = "";
		input_text = "";
		command_name = "";
	}
}
	

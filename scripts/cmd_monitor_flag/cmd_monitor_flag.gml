function cmd_monitor_flag(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"monitor_flag\"!");
		return;
	}
	
	var flag = string_digits(_args[0]);
	
	for (var i = 0; i < array_length(global.monitorFlags); i++)
	{
		if (global.monitorFlags[i] == flag)
		{
			array_delete(global.monitorFlags, i, 1);
			return;
		}
	}
	
	array_push(global.monitorFlags, flag);
}
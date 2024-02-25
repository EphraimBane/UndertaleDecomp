function validCommandName(_commandName)
{
	for (var i = 0; i < array_length(obj_decomp_console.commands); i++)
	{
		if (obj_decomp_console.commands[i].displayName == _commandName)
			return true;
	}
	return false;
}
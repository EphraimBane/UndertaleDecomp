function cmd_room_speed(_args)
{
	if (array_length(_args) < 1)
	{
		command_writeline("Invalid Argument count for \"room_speed\"!");
		return;
	}
	var rm_speed = real(string_digits(_args[0]));
	
	if (rm_speed <= 0)
	{
		command_writeline($"Room speed cannot be {rm_speed}");
		return;
	}
	
	room_speed = rm_speed;
}
function command_writeline(_text)
{
	array_push(obj_decomp_console.history, _text);
	if (array_length(obj_decomp_console.history) >= COMMAND_CONSOLE_HISTORY_MAX)
		array_pop(obj_decomp_console.history);
}
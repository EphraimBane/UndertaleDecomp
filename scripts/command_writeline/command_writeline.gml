function command_writeline(_text)
{
	array_push(obj_decomp_console.history, _text);
	if (array_length(obj_decomp_console.history) >= 128)
		array_pop(obj_decomp_console.history);
}
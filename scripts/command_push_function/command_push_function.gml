function command_push_function(_text)
{
	array_push(obj_decomp_console.commands_history, _text);
	if (array_length(obj_decomp_console.commands_history) >= 128)
		array_pop(obj_decomp_console.commands_history);
}
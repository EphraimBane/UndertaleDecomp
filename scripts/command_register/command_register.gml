/// @func	command_register(display_name, about, [arguments], [function_ref])
/// @desc	Registers a command with the built in decomp console
///	@param	{string}			display_name	The name of the command to use in the console
///	@param	{string}			about			The text to display when using help
/// @param	{Array<string>}		arguments		The arguments to display in the console
/// @param	{Asset.Function}	function_ref	The function reference to use when the command is executed, defaults to cmd_<display_name>
function command_register(_display_name, _about, _arguments = [ ], _function_ref = noone)
{
	var funcRef = _function_ref;
	if (funcRef == noone)
		funcRef = "cmd_" + _display_name;
	array_push(commands, new command_def(_display_name, _about, funcRef, _arguments));
}
function save_decomp_vars()
{
	if (ossafe_file_exists("decomp_vars.ini"))
		ossafe_file_delete("decomp_vars.ini");
		
	show_debug_message("Attempting to save decomp vars...");
	var handle = ossafe_ini_open("decomp_vars.ini");
	var keys = variable_struct_get_names(global.decomp_vars);
	for (var i = 0; i < array_length(keys); i++)
	{
		var key = keys[i];
		var value = global.decomp_vars[$key];
		ini_write_string("General", key, string(value));
	}
		
	ossafe_ini_close(handle);
	show_debug_message("Successfully saved decomp vars");
}
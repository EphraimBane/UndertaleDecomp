function ossafe_file_text_writeln()
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM)
	    return file_text_writeln(argument0);
	else
	{
	    var handle = argument0
	    ds_map_set(handle, "data", (ds_map_find_value(handle, "data") + "\r\n"))
	}
}

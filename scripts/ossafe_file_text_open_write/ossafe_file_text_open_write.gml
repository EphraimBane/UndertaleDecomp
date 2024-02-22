function ossafe_file_text_open_write(_filepath)
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM)
	    return file_text_open_write(_filepath);
	else
	{
	    var handle = ds_map_create()
	    ds_map_set(handle, "is_write", 1)
	    ds_map_set(handle, "filename", string_lower(_filepath))
	    ds_map_set(handle, "data", "")
	    return handle;
	}
}

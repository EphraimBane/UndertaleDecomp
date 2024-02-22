function ossafe_file_text_close(_filepath)
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM)
	    return file_text_close(_filepath);
	else
	{
	    var handle = _filepath
	    if ds_map_find_value(handle, "is_write")
	        ds_map_set(global.savedata, ds_map_find_value(handle, "filename"), ds_map_find_value(handle, "data"))
	    ds_map_destroy(handle)
	}
}

function ossafe_file_delete(_filepath)
{
	if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM)
	    return file_delete(_filepath);
	else if (!(is_undefined(ds_map_find_value(global.savedata, _filepath))))
	    ds_map_delete(global.savedata, _filepath)
}

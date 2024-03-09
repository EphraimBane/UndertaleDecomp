function layers_get_background_from_id(_id)
{
	var layers = layer_get_all();
	var target_compat_name = "Compatibility_Background_" + string(_id);
	var target_normal_name = "Background_" + string(_id);
	for (var i = 0; i < array_length(layers); i++)
	{
		var layer_name = layer_get_name(layers[i]);
		
		if (string_starts_with(layer_name, target_compat_name) || string_starts_with(layer_name, target_normal_name))
			return layers[i];
		
	}
	return -1;
}
function layers_get_color_background()
{
	var layers = layer_get_all();
	for (var i = 0; i < array_length(layers); i++)
	{
		var layer_name = layer_get_name(layers[i]);
		
		if (string_starts_with(layer_name, "Compatibility_Colour") || 
			string_starts_with(layer_name, "Compatibility_Color") ||
			string_starts_with(layer_name, "Color") ||
			string_starts_with(layer_name, "Colour")
			)
			return layers[i];
		
	}
	return -1;
}
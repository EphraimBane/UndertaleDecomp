function background_color_set(_value)
{
	var layer_id = layers_get_color_background();
	if (layer_id == -1)
		return;
	
	layer_background_blend(layer_background_get_id(layer_id), _value);
}
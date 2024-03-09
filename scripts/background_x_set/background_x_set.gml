function background_x_set(_layer_index, _value)
{
	var layer_id = layers_get_background_from_id(_layer_index);
	if (layer_id == -1)
		return;
	
	layer_x(layer_id, _value);
}
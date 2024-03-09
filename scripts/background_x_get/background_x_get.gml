function background_x_get(_layer_index)
{
	var layer_id = layers_get_background_from_id(_layer_index);
	if (layer_id == -1)
		return 0;
		
	return layer_get_x(layer_id)
}
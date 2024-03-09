function background_x_get(_background_id)
{
	var layer_id = layers_get_background_from_id(_background_id);
	if (layer_id == -1)
		return 0;
		
	return layer_get_x(layer_id)
}
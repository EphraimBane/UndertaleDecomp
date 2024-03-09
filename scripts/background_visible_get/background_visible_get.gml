function background_visible_get(_background_id)
{
	var layer_id = layers_get_background_from_id(_background_id);
	if (layer_id == -1)
		return false;
		
	return layer_get_visible(layer_id);
}
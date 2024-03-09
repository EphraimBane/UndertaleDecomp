function background_visible_set(_background_id, _value)
{
	var layer_id = layers_get_background_from_id(_background_id);
	if (layer_id == -1)
		return;
	
	layer_background_visible(layer_background_get_id(layer_id), _value);
	layer_set_visible(layer_id, _value);
}
function background_width_get(_background_id)
{
	var layer_id = layers_get_background_from_id(_background_id);
	if (layer_id == -1)
		return 0;
	
	var background_id = layer_background_get_id(layer_id);
	return sprite_get_width(layer_background_get_sprite(background_id))
}
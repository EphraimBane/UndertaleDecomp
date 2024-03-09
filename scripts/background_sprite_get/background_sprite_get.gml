function background_sprite_get(_background_id)
{
	var layer_id = layers_get_background_from_id(_background_id);
	if (layer_id == -1)
		return noone;
	
	return layer_background_get_sprite(layer_background_get_id(layer_id));
}
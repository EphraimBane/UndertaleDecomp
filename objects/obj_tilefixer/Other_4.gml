if (!global.decomp_vars.VanillaMode)
{
	if (room == room_ruins4)
	{
		var lay_id = layer_get_id("Tiles_Depth_1000000_2")
		var map_id = layer_tilemap_get_id(lay_id);
		var data = tilemap_get(map_id, 14, 2);
		data = tile_set_index(data, 30);
		tilemap_set(map_id, data, 14, 2);
	}
}
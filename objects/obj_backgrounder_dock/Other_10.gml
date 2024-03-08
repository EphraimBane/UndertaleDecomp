gg = (room_width - camera_0_width)
hh = (room_height - camera_0_height)
if (camera_0_x >= 0 && camera_0_x < gg)
{
    x = (xhome + floor((camera_0_x - (camera_0_x * scrollspeed))))
    g = (x - xprevious)
    tile_layer_shift(1000100, g, 0)
    tile_layer_shift(1000002, (g / 2), 0)
}
if (camera_0_y >= 0 && camera_0_y < hh)
{
    y = (yhome + floor((camera_0_y - (camera_0_y * scrollspeed))))
    h = (y - yprevious)
    tile_layer_shift(1000100, 0, h)
    tile_layer_shift(1000002, 0, (h / 2))
}

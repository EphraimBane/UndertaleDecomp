gg = (room_width - camera_get_view_width(view_camera[0]))
hh = (room_height - camera_get_view_height(view_camera[0]))
if (camera_get_view_x(view_camera[0]) >= 0 && camera_get_view_x(view_camera[0]) < gg)
{
    x = (xhome + floor((camera_get_view_x(view_camera[0]) - (camera_get_view_x(view_camera[0]) * scrollspeed))))
    g = (x - xprevious)
    tile_layer_shift(1000100, g, 0)
    tile_layer_shift(1000002, (g / 2), 0)
}
if (camera_get_view_y(view_camera[0]) >= 0 && camera_get_view_y(view_camera[0]) < hh)
{
    y = (yhome + floor((camera_get_view_y(view_camera[0]) - (camera_get_view_y(view_camera[0]) * scrollspeed))))
    h = (y - yprevious)
    tile_layer_shift(1000100, 0, h)
    tile_layer_shift(1000002, 0, (h / 2))
}

anim += 3
for (i = 0; i < 20; i += 1)
    draw_sprite_ext(sprite_index, 0, x, (((-210 + y) + (i * 30)) + anim), 2, 2, 0, c_white, 0.2)
if (anim > 180)
    anim -= 180
myview = 0
if (__view_get(VIEW_PROP_CAM_X, 0) > 0 && __view_get(VIEW_PROP_CAM_X, 0) < (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0)))
    myview = __view_get(VIEW_PROP_CAM_X, 0)
if (__view_get(VIEW_PROP_CAM_X, 0) >= (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0)))
    myview = (room_width - __view_get(VIEW_PROP_CAM_WIDTH, 0))
x = (xstart - (myview * 0.5))

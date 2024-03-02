xx = __view_get(VIEW_PROP_CAM_X, 0)
yy = __view_get(VIEW_PROP_CAM_Y, 0)
draw_sprite(sprite_index, image_index, x, y)
timertime -= 1
if (timertime < 300)
    timertime += 0.25

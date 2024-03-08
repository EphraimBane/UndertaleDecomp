xx = camera_get_view_x(view_camera[0])
yy = camera_get_view_y(view_camera[0])
draw_sprite(sprite_index, image_index, x, y)
timertime -= 1
if (timertime < 300)
    timertime += 0.25

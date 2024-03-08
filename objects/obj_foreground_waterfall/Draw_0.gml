anim += 3
for (i = 0; i < 20; i += 1)
    draw_sprite_ext(sprite_index, 0, x, (((-210 + y) + (i * 30)) + anim), 2, 2, 0, c_white, 0.2)
if (anim > 180)
    anim -= 180
myview = 0
if (camera_0_x > 0 && camera_0_x < (room_width - camera_0_width))
    myview = camera_0_x
if (camera_0_x >= (room_width - camera_0_width))
    myview = (room_width - camera_0_width)
x = (xstart - (myview * 0.5))

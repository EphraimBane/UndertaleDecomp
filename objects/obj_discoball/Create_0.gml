y = (camera_get_view_y(view_camera[0]) - sprite_width)
on = 1
amt = 0
siner = 0
reverse = 0
if (instance_find(object_index, 1) != noone)
    reverse = 1
else
    instance_create((camera_get_view_x(view_camera[0]) + 240), (camera_get_view_y(view_camera[0]) - sprite_width), object_index)
image_speed = 0.334

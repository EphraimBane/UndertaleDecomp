y = (camera_0_y - sprite_width)
on = 1
amt = 0
siner = 0
reverse = 0
if (instance_find(object_index, 1) != noone)
    reverse = 1
else
    instance_create((camera_0_x + 240), (camera_0_y - sprite_width), object_index)
image_speed = 0.334

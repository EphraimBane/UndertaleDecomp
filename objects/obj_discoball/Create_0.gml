y = (__view_get(VIEW_PROP_CAM_Y, 0) - sprite_width)
on = 1
amt = 0
siner = 0
reverse = 0
if (instance_find(object_index, 1) != noone)
    reverse = 1
else
    instance_create((__view_get(VIEW_PROP_CAM_X, 0) + 240), (__view_get(VIEW_PROP_CAM_Y, obj_backgrounder_parent) - sprite_width), object_index)
image_speed = 0.334

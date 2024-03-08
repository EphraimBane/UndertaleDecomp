alarm[1] = 1
repeat (2)
{
    if (room == room_water_waterfall)
        instance_create(((__view_get(VIEW_PROP_CAM_X, 0) - 40) + random(360)), ((__view_get(VIEW_PROP_CAM_Y, obj_backgrounder_parent) - random(50)) - 70), obj_normaldrop)
    if (room == room_water_waterfall2)
        instance_create((120 + random(60)), (__view_get(VIEW_PROP_CAM_Y, obj_backgrounder_parent) - random(240)), obj_normaldrop)
}
if (room == room_water_waterfall4)
{
    d = instance_create(random(340), ((__view_get(VIEW_PROP_CAM_Y, obj_backgrounder_parent) - random(50)) - 90), obj_normaldrop)
    d.dont = 1
    d = instance_create((random(180) + 340), ((__view_get(VIEW_PROP_CAM_Y, obj_backgrounder_parent) - random(50)) - 130), obj_normaldrop)
    d.dont = 1
}

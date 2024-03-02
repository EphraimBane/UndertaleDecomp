intensity = 10
alarm[0] = 1
self_d = 0
with (obj_sans_shaker)
{
    self_d += 1
    event_user(0)
}
self_d = 1
__view_set(VIEW_PROP_CAM_X, 0, 0)
__view_set(VIEW_PROP_CAM_Y, 0, 0)

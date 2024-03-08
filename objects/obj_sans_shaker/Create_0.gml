intensity = 10
alarm[0] = 1
self_d = 0
with (obj_sans_shaker)
{
    self_d += 1
    event_user(0)
}
self_d = 1
camera_set_view_pos(view_camera[0], 0, 0)

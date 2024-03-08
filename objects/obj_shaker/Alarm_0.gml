if (hshake != 0)
{
    if (hshake < 0)
    {
        __view_set(VIEW_PROP_CAM_X, myview, (camera_get_view_x(view_camera[myview]) + hshake))
        hshake += 1
    }
    if (hshake > 0)
        __view_set(VIEW_PROP_CAM_X, myview, (camera_get_view_x(view_camera[myview]) + hshake))
    hshake = (-hshake)
}
if (vshake != 0)
{
    if (vshake > 0)
        __view_set(VIEW_PROP_CAM_Y, myview, (camera_get_view_x(view_camera[myview]) + vshake))
    if (vshake < 0)
    {
        __view_set(VIEW_PROP_CAM_Y, myview, (camera_get_view_x(view_camera[myview]) + vshake))
        vshake += 1
    }
    vshake = (-vshake)
}
alarm[myview] = shakespeed
if (hshake == 0 && vshake == 0)
    instance_destroy()

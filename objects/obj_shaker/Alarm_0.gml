if (hshake != 0)
{
    if (hshake < 0)
    {
        __view_set(VIEW_PROP_CAM_X, myview, (__view_get(VIEW_PROP_CAM_X, myview) + hshake))
        hshake += 1
    }
    if (hshake > 0)
        __view_set(VIEW_PROP_CAM_X, myview, (__view_get(VIEW_PROP_CAM_X, myview) + hshake))
    hshake = (-hshake)
}
if (vshake != 0)
{
    if (vshake > 0)
        __view_set(VIEW_PROP_CAM_Y, myview, (__view_get(VIEW_PROP_CAM_Y, myview) + vshake))
    if (vshake < 0)
    {
        __view_set(VIEW_PROP_CAM_Y, myview, (__view_get(VIEW_PROP_CAM_Y, myview) + vshake))
        vshake += 1
    }
    vshake = (-vshake)
}
alarm[myview] = shakespeed
if (hshake == 0 && vshake == 0)
    instance_destroy()

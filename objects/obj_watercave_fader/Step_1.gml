if (__view_get(VIEW_PROP_CAM_X, 0) > 0)
{
    a = (oalpha - (__view_get(VIEW_PROP_CAM_X, 0) / top))
    if (a > 0)
        image_alpha = a
    else
        image_alpha = 0
}

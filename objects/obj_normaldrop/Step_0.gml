if (y > goal)
    event_user(1)
if (dont == 0)
{
    if (x < (__view_get(VIEW_PROP_CAM_X, 0) - 40))
        x += 361
    if (x > (__view_get(VIEW_PROP_CAM_X, 0) + 360))
        x -= 361
}

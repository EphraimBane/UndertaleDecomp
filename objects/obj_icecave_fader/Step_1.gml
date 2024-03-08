if (camera_0_y <= 0)
{
    image_alpha = 0
    oalpha = 0
}
if (camera_0_y > 0)
{
    a = (oalpha - ((top / camera_0_y) * oalpha))
    if (a > 0)
        image_alpha = a
    else
        image_alpha = 0
}

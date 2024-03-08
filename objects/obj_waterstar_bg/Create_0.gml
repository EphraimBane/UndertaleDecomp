f_test = 1
g_heart = 0
rememberx = obj_mainchara.x
rememberview = camera_0_x
__view_set(VIEW_PROP_CAM_X, 0, 300)
obj_mainchara.x = 300
size = 1
alarm[0] = 1
scrollspeed = size
xhome = xstart
if (global.entrance == 1)
{
    if (x < 0)
    {
        x += 350
        xhome += 350
    }
    if (x > 320)
    {
        x -= 350
        xhome -= 350
    }
    if (x < 0)
    {
        x += 350
        xhome += 350
    }
    if (x > 320)
    {
        x -= 350
        xhome -= 350
    }
    if (x < 0)
    {
        x += 350
        xhome += 350
    }
    if (x > 320)
    {
        x -= 350
        xhome -= 350
    }
    if (x < 0)
    {
        x += 350
        xhome += 350
    }
    if (x > 320)
    {
        x -= 350
        xhome -= 350
    }
}
if (global.entrance == 2)
{
    repeat (5)
    {
        if (x < (room_width - camera_0_width))
        {
            x += 350
            xhome += 350
        }
        if (x > (room_width - camera_0_width))
        {
            x -= 350
            xhome -= 350
        }
    }
}
x = xhome
obj_mainchara.x = rememberx

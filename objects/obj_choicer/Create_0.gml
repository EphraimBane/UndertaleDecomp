alarm[1] = 3
canchoose = 0
add = camera_get_view_x(view_camera[view_current])
x0 = (89 + add)
x1 = (185 + add)
x = x0
y = (210 + camera_get_view_y(view_camera[view_current]))
d = -1
if instance_exists(obj_dialoguer)
    d = obj_dialoguer.side
if (room != room_fire_operatest)
{
    if (obj_mainchara.y > (camera_get_view_y(view_camera[view_current]) + 130) || d == 0)
        y -= 155
}
mychoice = 0
global.choice = -1
choiced = false

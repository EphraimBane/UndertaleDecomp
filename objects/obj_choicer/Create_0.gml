alarm[1] = 3
canchoose = 0
add = camera_current_x
x0 = (89 + add)
x1 = (185 + add)
x = x0
y = (210 + camera_current_y)
d = -1
if instance_exists(obj_dialoguer)
    d = obj_dialoguer.side
if (room != room_fire_operatest)
{
    if (obj_mainchara.y > (camera_current_y + 130) || d == 0)
        y -= 155
}
mychoice = 0
global.choice = -1
choiced = false

phrase = scr_gettext("obj_sistertext_28")
active = false
alarm[0] = 1
done = 0
amt = 6
for (i = 0; i < amt; i += 1)
{
    fade[i] = 0
    wherex[i] = ((random(220) + camera_get_view_x(view_camera[0])) - 50)
    wherey[i] = random((room_height - 20))
}
siner = 0
type = 1
hypefade = 1

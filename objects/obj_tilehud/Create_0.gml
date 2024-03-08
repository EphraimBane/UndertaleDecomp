x = (camera_get_view_x(view_camera[0]) + 210)
y = (camera_get_view_y(view_camera[0]) - 40)
vspeed = 8
friction = 0.3
con = 0
if instance_exists(obj_multitileevent)
    time = obj_multitileevent.cooltimer
else
    time = 900
finished = false
orange = -1

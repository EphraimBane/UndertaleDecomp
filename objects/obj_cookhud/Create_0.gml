x = (__view_get(VIEW_PROP_CAM_X, 0) - 103)
y = (__view_get(VIEW_PROP_CAM_Y, 0) + 40)
hspeed = 8
friction = 0.3
con = 0
if instance_exists(obj_jetpackchara)
{
    dist = obj_jetpackchara.dist
    maxdist = obj_jetpackchara.maxdist
    time = obj_jetpackchara.timertime
    inittime = obj_jetpackchara.timertime
}
else
{
    dist = 0
    maxdist = 400
    time = 600
    inittime = 600
}
finished = false

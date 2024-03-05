scr_depth(0, 0, 0, 0, 0)
if (FL_GotRibbon == 1 && instance_exists(obj_dialoguer) == false)
{
    instance_destroy()
    global.interact = 0
}

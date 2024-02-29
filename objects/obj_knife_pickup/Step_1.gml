scr_depth(0, 0, 0, 0, 0)
if (FL_GotToyKnife == 1 && instance_exists(obj_dialoguer) == 0)
{
    instance_destroy()
    global.interact = 0
}

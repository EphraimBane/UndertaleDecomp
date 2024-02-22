if (instance_exists(blconwriter) == 0)
{
    if (FL_Hardmode == 0)
        alarm[10] = 2
    else
    {
        destroyed = -1
        with (blcon)
            instance_destroy()
        tr = instance_create(x, y, obj_torboss_2ndtime)
        visible = false
        conversation = -20
    }
}
else
    alarm[9] = 2

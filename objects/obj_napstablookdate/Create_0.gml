if (FL_TruePacifist == 0 && scr_murderlv() < 10)
{
    nap = instance_create(210, 70, obj_napstablook_actor)
    image_xscale = 4
    if (FL_NapstablookDateStatus > 0)
        y = 20
    con = 0
    wavein = 0
}
else
{
    instance_destroy()
    return;
}

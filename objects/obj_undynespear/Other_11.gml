if (active == true)
{
    global.border = 3
    FL_InBattle = 1
    FL_TypeHeartTransition = 1
    FL_QuickBattle = 1
    SCR_BORDERSETUP()
    instance_create(0, 0, obj_battlerquick)
    obj_undynespear.active = 2
    if instance_exists(obj_undyneencounter1)
        obj_undyneencounter1.stopper = 1
    if instance_exists(obj_uspeargen)
        obj_uspeargen.alarm[0] += 20
}

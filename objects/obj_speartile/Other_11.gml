if (active == true)
{
    global.border = 3
    FL_InBattle = true
    FL_TypeHeartTransition = HeartTransitionType.QuickBattle
    FL_QuickBattle = 1
    SCR_BORDERSETUP()
    instance_create(0, 0, obj_battlerquick)
    obj_speartile.active = 2
    if instance_exists(obj_undyneencounter3)
        obj_undyneencounter3.stopper = 1
    if instance_exists(obj_speartilegen)
        obj_speartilegen.alarm[3] += 70
}

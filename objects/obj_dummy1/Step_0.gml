if (myinteract == 1 && global.plot < 6)
{
    FL_SparedLast = 0
    FL_EscapedLast = 0
    FL_KilledLast = 0
    FL_BoredLast = 0
    global.entrance = 0
    global.battlegroup = 2
    obj_mainchara.depth = -600
    if (instance_exists(obj_battler) == 0)
        instance_create(0, 0, obj_battler)
    global.plot = 6
    myinteract = 0
}
script_execute(scr_depth)

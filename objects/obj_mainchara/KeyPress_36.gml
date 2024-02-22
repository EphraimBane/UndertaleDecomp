if (global.debug == true)
{
    global.battlegroup = (57 + nnn)
    global.border = 0
    instance_create(0, 0, obj_battleblcon)
    if (global.plot == 998)
    {
        FL_SparedLast = 0
        FL_EscapedLast = 0
        FL_KilledLast = 0
        FL_BoredLast = 0
        global.entrance = 0
        global.battlegroup = 82
        obj_mainchara.depth = -600
        if (instance_exists(obj_battler) == 0)
            instance_create(0, 0, obj_battler)
    }
}

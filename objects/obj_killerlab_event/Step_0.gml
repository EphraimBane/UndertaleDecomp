if (con == 1)
{
    con = 2
    nowx = __view_get(VIEW_PROP_CAM_X, 0)
    obj_mainchara.cutscene = true
}
if (con == 2)
{
    __view_set(VIEW_PROP_CAM_X, 0, (__view_get(VIEW_PROP_CAM_X, 0) + 3))
    if (__view_get(VIEW_PROP_CAM_X, 0) >= (nowx + 78))
    {
        __view_set(VIEW_PROP_CAM_X, 0, (nowx + 78))
        con = 2.1
        alarm[4] = 30
    }
}
if (con == 3.1)
{
    global.facechoice = 0
    global.faceemotion = 0
    global.typer = 27
    global.msc = 0
    global.msg[0] = scr_gettext("obj_killerlab_event_113")
    global.msg[1] = scr_gettext("obj_killerlab_event_114")
    global.msg[2] = scr_gettext("obj_killerlab_event_115")
    global.msg[3] = scr_gettext("obj_killerlab_event_116")
    global.msg[4] = scr_gettext("obj_killerlab_event_117")
    global.msg[5] = scr_gettext("obj_killerlab_event_118")
    global.msg[6] = scr_gettext("obj_killerlab_event_119")
    global.msg[7] = scr_gettext("obj_killerlab_event_120")
    con = 4
    d = instance_create(0, 0, obj_dialoguer)
    d.side = 0
}
if (con == 4 && instance_exists(OBJ_WRITER) == 0)
{
    mc = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_maincharar)
    mc.image_speed = 0.25
    mc.hspeed = 2
    obj_mainchara.visible = false
    con = 5
}
if (con == 5)
{
    if (mc.x >= (mc.xstart + 20))
    {
        mc.hspeed = 0
        mc.image_speed = 0
        mc.image_index = 0
        con = 6
        alarm[4] = 45
    }
}
if (con == 7)
{
    global.msg[0] = scr_gettext("obj_killerlab_event_151")
    global.msg[1] = scr_gettext("obj_killerlab_event_152")
    global.msg[2] = scr_gettext("obj_killerlab_event_153")
    global.msg[3] = scr_gettext("obj_killerlab_event_154")
    global.msg[4] = scr_gettext("obj_killerlab_event_155")
    instance_create(0, 0, obj_dialoguer)
    con = 8
}
if (con == 8 && instance_exists(OBJ_WRITER) == 0)
{
    mett.hspeed = 8
    con = 9
    alarm[4] = 15
}
if (con == 10)
{
    __view_set(VIEW_PROP_CAM_X, 0, (__view_get(VIEW_PROP_CAM_X, 0) - 2))
    if (__view_get(VIEW_PROP_CAM_X, 0) <= (nowx + 20))
        con = 11
}
if (con == 11)
{
    obj_mainchara.x = mc.x
    obj_mainchara.visible = true
    obj_mainchara.cutscene = false
    with (mc)
        instance_destroy()
    global.interact = 0
    FL_DisableAlphysCalls = 1
    FL_DisableAlphysStatuses = 1
    FL_AlphysStatusConvoCounter = 99
    FL_Laser1Off = 1
    FL_CompletedShootPuzzle1 = 1
    FL_CompletedShootPuzzle2 = 1
    FL_CompletedShootPuzzle3 = 1
    FL_CompletedShootPuzzle4 = 1
    FL_GotAlphysAdvice4 = 1
    FL_PreCastleUnknown1 = 1
    global.plot = 160
    con = 12
    instance_destroy()
}

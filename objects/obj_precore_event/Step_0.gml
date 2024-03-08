if (con == 1)
{
    obj_mainchara.cutscene = true
    camera_set_view_target(view_camera[0], noone)
    con = 2
    remy = camera_get_view_y(view_camera[0])
}
if (con == 2)
{
    __view_set(VIEW_PROP_CAM_Y, 0, (camera_get_view_y(view_camera[0]) - 3))
    if (camera_get_view_y(view_camera[0]) <= 122)
    {
        __view_set(VIEW_PROP_CAM_Y, 0, 120)
        con = 3
    }
}
if (con == 3)
{
    con = 4
    alarm[4] = 20
}
if (con == 5)
{
    with (obj_darkman_actor)
        mov = 1
    snd_play(snd_phone)
    global.plot = 176
    global.msc = 0
    global.facechoice = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_precore_event_117")
    global.msg[1] = scr_gettext("obj_precore_event_118")
    global.msg[2] = scr_gettext("obj_precore_event_119")
    global.msg[3] = scr_gettext("obj_precore_event_120")
    global.msg[4] = scr_gettext("obj_precore_event_121")
    global.msg[5] = scr_gettext("obj_precore_event_122")
    global.msg[6] = scr_gettext("obj_precore_event_123")
    ge = instance_create(0, 0, obj_dialoguer)
    ge.side = 1
    con = 6
}
if (con == 6 && instance_exists(OBJ_WRITER) == false)
    con = 7
if (con == 7)
{
    __view_set(VIEW_PROP_CAM_Y, 0, (camera_get_view_y(view_camera[0]) + 5))
    if (camera_get_view_y(view_camera[0]) >= (remy - 2))
    {
        __view_set(VIEW_PROP_CAM_Y, 0, remy)
        con = 8
    }
}
if (con == 8)
{
    obj_mainchara.cutscene = false
    camera_set_view_target(view_camera[0], obj_mainchara)
    global.interact = 0
    con = 9
    instance_destroy()
}

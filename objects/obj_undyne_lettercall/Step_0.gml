if (con == 1)
{
    caster_pause(global.currentsong)
    snd_play(snd_phone)
    alarm[4] = 40
    con = 2
}
if (con == 3)
{
    global.msc = 0
    global.facechoice = 0
    global.typer = 5
    global.msg[0] = scr_gettext("obj_undyne_lettercall_113")
    scr_undface(1, 0)
    global.msg[2] = scr_gettext("obj_undyne_lettercall_115")
    global.msg[3] = scr_gettext("obj_undyne_lettercall_116")
    global.msg[4] = scr_gettext("obj_undyne_lettercall_117")
    global.msg[5] = scr_gettext("obj_undyne_lettercall_118")
    global.msg[6] = scr_gettext("obj_undyne_lettercall_119")
    global.msg[7] = scr_gettext("obj_undyne_lettercall_120")
    global.msg[8] = scr_gettext("obj_undyne_lettercall_121")
    global.msg[9] = scr_gettext("obj_undyne_lettercall_122")
    instance_create(0, 0, obj_dialoguer)
    con = 6
}
if (con == 6 && instance_exists(OBJ_WRITER) == 0)
{
    FL_DisableRandomEncounters = 1
    caster_resume(global.currentsong)
    if (FL_DatedAlphys < 8)
        FL_DatedAlphys = 8
    global.interact = 0
    con = 7
}

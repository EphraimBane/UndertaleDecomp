myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (type == 0)
{
    global.msg[0] = scr_gettext("obj_colorlever_77")
    if (FL_TrueLabEvent1 == 3)
        global.msg[0] = scr_gettext("obj_colorlever_81")
    if (FL_TrueLabEvent1 == 2)
    {
        FL_TrueLabEvent1 = 3
        red = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_89")
    }
}
if (type == 1)
{
    global.msg[0] = scr_gettext("obj_colorlever_98")
    if (FL_TrueLabEvent2 == 3)
        global.msg[0] = scr_gettext("obj_colorlever_102")
    if (FL_TrueLabEvent2 == 2)
    {
        FL_TrueLabEvent2 = 3
        blu = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_110")
    }
}
if (type == 2)
{
    global.msg[0] = scr_gettext("obj_colorlever_119")
    if (FL_TrueLabEvent3 == 3)
        global.msg[0] = scr_gettext("obj_colorlever_123")
    if (FL_TrueLabEvent3 == 2)
    {
        FL_TrueLabEvent3 = 3
        gre = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_131")
    }
}
if (type == 3)
{
    global.msg[0] = scr_gettext("obj_colorlever_140")
    if (FL_TrueLabEvent4 == 3)
        global.msg[0] = scr_gettext("obj_colorlever_144")
    if (FL_TrueLabEvent4 == 2)
    {
        FL_TrueLabEvent4 = 3
        yel = 1
        snd_play(snd_noise)
        global.msg[0] = scr_gettext("obj_colorlever_152")
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)

myinteract = 3
global.msc = 585
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
global.msg[0] = scr_gettext("obj_musicstatue_110")
if (FL_TruePacifist == 1 && FL_HaveUmbrella == 1 && FL_MusicStatueOn == 0)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_musicstatue_114")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1

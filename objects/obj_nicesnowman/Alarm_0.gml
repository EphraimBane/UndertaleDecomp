myinteract = 3
global.msc = 226
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (FL_TruePacifist == 1)
{
    global.msc = 0
    global.msg[0] = scr_gettext("obj_nicesnowman_107")
    global.msg[1] = scr_gettext("obj_nicesnowman_108")
    global.msg[2] = scr_gettext("obj_nicesnowman_109")
    scr_itemcheck(16)
    scr_storagecheck(16)
    if (FL_SnowmanStatus == SnowmanStatus.TookPiece || FL_SnowmanStatus == SnowmanStatus.TookPieceAfterDispose)
    {
        global.msg[0] = scr_gettext("obj_nicesnowman_120")
        global.msg[1] = scr_gettext("obj_nicesnowman_121")
        global.msg[1] = scr_gettext("obj_nicesnowman_122")
        global.msg[2] = scr_gettext("obj_nicesnowman_123")
        global.msg[3] = scr_gettext("obj_nicesnowman_124")
        global.msg[4] = scr_gettext("obj_nicesnowman_125")
    }
    if (FL_SnowmanStatus == SnowmanStatus.TookPiece || FL_SnowmanStatus == SnowmanStatus.TookPieceAfterDispose)
    {
        if (haveit == false)
        {
            if (haveit2 == 0)
            {
                global.msg[0] = scr_gettext("obj_nicesnowman_133")
                global.msg[1] = scr_gettext("obj_nicesnowman_134")
                global.msg[2] = scr_gettext("obj_nicesnowman_135")
            }
        }
    }
    if (FL_SnowmanStatus == SnowmanStatus.WitnessedPlayerUse || FL_SnowmanStatus == SnowmanStatus.TalkedToAfterWitness)
    {
        global.msg[0] = scr_gettext("obj_nicesnowman_140")
        global.msg[1] = scr_gettext("obj_nicesnowman_141")
        global.msg[2] = scr_gettext("obj_nicesnowman_142")
        global.msg[3] = scr_gettext("obj_nicesnowman_143")
    }
}
if (scr_murderlv() >= 2)
{
    global.msc = 0
    noroom = 0
    if (FL_SnowmanPieceCounter <= 2)
        scr_itemget(16)
    if (noroom == 1)
        global.msg[0] = scr_gettext("obj_nicesnowman_155")
    else
    {
        if (FL_SnowmanPieceCounter == 0)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_161")
            global.msg[1] = scr_gettext("obj_nicesnowman_162")
            global.msg[2] = scr_gettext("obj_nicesnowman_163")
        }
        if (FL_SnowmanPieceCounter == 1)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_167")
            global.msg[1] = scr_gettext("obj_nicesnowman_168")
            global.msg[2] = scr_gettext("obj_nicesnowman_169")
        }
        if (FL_SnowmanPieceCounter == 2)
        {
            global.msg[0] = scr_gettext("obj_nicesnowman_173")
            global.msg[1] = scr_gettext("obj_nicesnowman_174")
        }
        if (FL_SnowmanPieceCounter >= 3)
            global.msg[0] = scr_gettext("obj_nicesnowman_177")
        dt = 1
    }
}
mydialoguer = instance_create(0, 0, obj_dialoguer)

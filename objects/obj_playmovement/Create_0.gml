con = 0
drawtext = 0
drawtext2 = 0
string1 = scr_gettext("mett_opera1_1")
string2 = scr_gettext("mett_opera1_2")
strtime1 = 57
strtime2 = 57
image_yscale = 100
if (global.plot > 166)
    instance_destroy()
else
{
    __view_set(VIEW_PROP_CAM_Y, 0, 120)
    obj_mainchara.cutscene = true
    camera_set_view_target(view_camera[0], noone)
}
mainmove = 0
frantic = 0
alarm[10] = 15
lastmove = 0
lastx = obj_mainchara.x
lasty = obj_mainchara.y
unfrantic = 0
face2 = 0
touch = 0
already = 0
ossafe_ini_open("undertale.ini")
already = ini_read_real("Mett", "O", -1)
ossafe_ini_close()
skip = false

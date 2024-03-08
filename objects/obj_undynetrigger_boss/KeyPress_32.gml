if (global.debug == true)
{
    if (playthesong == 0)
    {
        undyne = caster_load("music/undynetruetheme.ogg")
        caster_loop(undyne, 1, 1)
        playthesong = 1
    }
    FL_UndyneZoomCutscene = true
    fakedrawer = 1
    instance_create(0, 0, obj_flasher)
    scr_shake(3, 3, 2)
	camera_set_view_target(view_camera[0], object_index)
	camera_set_view_border(view_camera[0], 160, 100)
	camera_set_view_size(view_camera[0], 160, 120)
    snd_play(snd_damage)
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynetrigger_boss_638") //, "*TEST!!!/%%
    instance_create((10 + xx), (150 + yy), OBJ_WRITER)
	
    if (camera_get_view_angle(view_camera[0]) <= 0)
        camera_set_view_angle(view_camera[0], (10 + random(40)))
    else
        camera_set_view_angle(view_camera[0], (-1 - random(40)))
}

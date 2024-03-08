if (playthesong == 0)
{
    global.currentsong = caster_load("music/undynetruetheme.ogg")
    caster_loop(global.currentsong, 0.9, 1)
    playthesong = 1
}
FL_UndyneZoomCutscene = true
fakedrawer = 1
instance_create(0, 0, obj_flasher)
scr_shake(3, 3, 2)
__view_set(VIEW_PROP_CAM_TARGET, 0, object_index)
__view_set(VIEW_PROP_CAM_X_BORDER, 0, 160)
__view_set(VIEW_PROP_CAM_Y_BORDER, 0, 100)
view_wview_set(0, 160)
view_hview_set(0, 120)
snd_play(snd_damage)
global.typer = 37
global.msc = 0
instance_create((10 + xx), (150 + yy), OBJ_WRITER)
if (__view_get(VIEW_PROP_CAM_ANGLE, 0) <= 0)
    view_angle_set(0, (10 + random(40)))
else
    view_angle_set(0, (-1 - random(40)))

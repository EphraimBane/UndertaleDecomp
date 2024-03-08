function scr_conshakeinit()
{
	conshakex = __view_get(VIEW_PROP_CAM_X, 0)
	conshakey = __view_get(VIEW_PROP_CAM_Y, 0)
	consiner = 0
	if instance_exists(obj_mainchara)
	    obj_mainchara.cutscene = true
}

function scr_conshakeend()
{
	__view_set(VIEW_PROP_CAM_X, 0, conshakex)
	__view_set(VIEW_PROP_CAM_Y, 0, conshakey)
	if instance_exists(obj_mainchara)
	    obj_mainchara.cutscene = false
}

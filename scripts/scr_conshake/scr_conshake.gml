function scr_conshake()
{
	consiner += 1
	__view_set(VIEW_PROP_CAM_X, 0, (conshakex + (sin(consiner) * argument0)))
	__view_set(VIEW_PROP_CAM_Y, 0, (conshakey + (cos(consiner) * argument0)))
}

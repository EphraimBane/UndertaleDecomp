function scr_musfadein()
{
	g = instance_create(0, 0, obj_musfadein)
	if (argument0 == 0)
	    argument0 = 0.05
	g.fadespeed = argument0
}

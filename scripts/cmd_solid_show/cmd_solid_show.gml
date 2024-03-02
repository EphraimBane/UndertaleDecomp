function cmd_solid_show(_args)
{	
	obj_decomp_console.show_collision = !obj_decomp_console.show_collision;
	if (instance_exists(obj_solidparent))
		obj_solidparent.visible = obj_decomp_console.show_collision;
	if (instance_exists(obj_diagoparent))
		obj_diagoparent.visible = obj_decomp_console.show_collision;
}
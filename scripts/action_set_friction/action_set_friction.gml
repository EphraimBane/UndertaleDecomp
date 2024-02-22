function action_set_friction()
{
	var val = argument0
	if global.__argument_relative
	    val += friction
	friction = val
}

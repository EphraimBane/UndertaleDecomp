/// @func	scr_musfadein(_fade_speed)
/// @desc	Overwrites the music fade in speed in object "obj_musfadein".
function scr_musfadein(_fade_speed)
{
	g = instance_create(0, 0, obj_musfadein)
	if (_fade_speed == 0)
	    _fade_speed = 0.05
	g.fadespeed = _fade_speed
}

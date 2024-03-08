camera_set_view_pos(view_camera[0], (random(shakex) - random(shakex)), (random(shakey) - random(shakey)))
if (turn1 == 0)
{
	camera_set_view_pos(view_camera[0], (shakex * choose(1, -1)), (shakey * choose(1, -1)))
    turn1 = 1
}
if (decay == 1)
{
    shakex -= 1
    shakey -= 1
}
if (shakex <= 0 && shakey <= 0)
{
    camera_set_view_pos(view_camera[0], 0, 0)
    instance_destroy()
}

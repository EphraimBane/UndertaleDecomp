con = 0
image_yscale = 5
if (global.plot > 134)
    instance_destroy()
else
{
    obj_mainchara.cutscene = true
    __view_set(VIEW_PROP_CAM_Y, 0, 240)
    instance_create(0, 0, obj_musfadeout)
    camera_set_view_target(view_camera[0], noone)
}
yoffset1 = 240

scr_depth(0, 0, 0, 0, 0)
if (talkedto == 1 && instance_exists(obj_dialoguer) == false)
{
    myinteract = 4
    image_alpha -= 0.05
    if (image_alpha < 0.1)
    {
        FL_NapstablookSpared = 2
        instance_destroy()
    }
}

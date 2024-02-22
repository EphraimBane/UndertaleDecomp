script_execute(scr_depth, 0, 0, 0, 0, 0)
if (FL_TruePacifist == 0)
{
    if instance_exists(obj_face_torieltalk)
        image_index = obj_face_torieltalk.image_index
    else
        image_index = 0
}
if (FL_TruePacifist == 1)
{
    if instance_exists(obj_face_asriel)
        image_index = obj_face_asriel.image_index
    else
        image_index = 0
}
script_execute(scr_npcdir, 2)

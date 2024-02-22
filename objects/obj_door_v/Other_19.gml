if (FL_TruePacifist == 0)
    instance_create(0, 0, obj_musfadeout)
global.interact = 3
instance_create(0, 0, obj_unfader)
if (FL_TruePacifist == 0)
    instance_create(0, 0, obj_musfadeout)
if (touched == false)
{
    alarm[2] = 14
    touched = true
}

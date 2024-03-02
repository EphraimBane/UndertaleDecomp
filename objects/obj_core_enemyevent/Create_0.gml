image_xscale = 6
con = 0
FL_AreaKillsPointer = 205
if (global.plot > 178)
    instance_destroy()
if (FL_TruePacifist == true || FL_DisableRandomEncounters == 1)
{
    instance_destroy()
    return;
}

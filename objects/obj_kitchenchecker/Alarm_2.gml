if (obj_mainchara.bbox_top < 134)
{
    level = 0
    if (instance_exists(block[0]) == 0)
    {
        block[0] = instance_create(160, 54, obj_solidthin)
        block[1] = instance_create(160, 77, obj_solidthin)
        block[2] = instance_create(280, 54, obj_solidthin)
        block[3] = instance_create(280, 77, obj_solidthin)
        block[5] = instance_create(180, 60, obj_solidsmall)
        block[6] = instance_create(180, 80, obj_solidsmall)
		// Vultu: This controls if the dog shrine door is active
        if ((global.osflavor == OS_FLAVOR_PLAYSTATION || global.osflavor == OS_FLAVOR_SWITCH || global.decomp_vars.AllowConsoleContent) && FL_PapyrusSinkEventOccured == 1)
            dogdoor = instance_create(212, 57, obj_doorXmusicfade)
        else
            dogdoor = noone
    }
    if instance_exists(block[4])
    {
        with (block[4])
            instance_destroy()
    }
}
else
{
    level = 1
    if instance_exists(block[0])
    {
        with (block[0])
            instance_destroy()
        with (block[1])
            instance_destroy()
        with (block[2])
            instance_destroy()
        with (block[3])
            instance_destroy()
        with (block[5])
            instance_destroy()
        with (block[6])
            instance_destroy()
        if (dogdoor != noone)
        {
            with (dogdoor)
                instance_destroy()
            dogdoor = noone
        }
    }
    if (instance_exists(block[4]) == 0)
        block[4] = instance_create(83, 90, obj_solidlong)
}

if (x > (camera_0_x - 100) && x < ((camera_0_x + camera_0_width) + 100))
{
    if (y > (camera_0_y - 100) && y < ((camera_0_y + camera_0_height) + 100))
        instance_create(((x + random(60)) - 20), (y - 15), obj_glowparticle_1)
}
alarm[0] = 10

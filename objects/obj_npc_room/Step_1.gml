scr_depth(0, 0, 0, 0, 0)
scr_npc_anim()
if (room == room_water3A && instance_exists(OBJ_WRITER) == false)
{
    if (FL_GotTutu == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_water_shoe && instance_exists(OBJ_WRITER) == false)
{
    if (FL_GotBalletShoes == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire6A && instance_exists(OBJ_WRITER) == false)
{
    if (FL_GotFryingPan == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_fire_apron && instance_exists(OBJ_WRITER) == false)
{
    if (FL_GotApron == 1)
    {
        global.interact = 0
        instance_destroy()
    }
}
if (room == room_asrielroom_final)
{
    if (x < (-10 + (room_width / 2)))
    {
        if (FL_GotDagger == 1)
            image_index = 1
        else
            image_index = 0
    }
    if (x >= (-10 + (room_width / 2)))
    {
        if (FL_GotLocked == 1)
            image_index = 1
        else
            image_index = 0
    }
}
if (sprite_index == spr_fukufire)
    image_speed = 0.2
if (sprite_index == spr_hotdog_harpy)
    image_speed = 0.2

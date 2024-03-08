alarm[1] = 1
repeat (2)
{
    if (room == room_water_waterfall)
        instance_create(((camera_0_x - 40) + random(360)), ((camera_0_y - random(50)) - 70), obj_normaldrop)
    if (room == room_water_waterfall2)
        instance_create((120 + random(60)), (camera_0_y - random(240)), obj_normaldrop)
}
if (room == room_water_waterfall4)
{
    d = instance_create(random(340), ((camera_0_y - random(50)) - 90), obj_normaldrop)
    d.dont = 1
    d = instance_create((random(180) + 340), ((camera_0_y - random(50)) - 130), obj_normaldrop)
    d.dont = 1
}

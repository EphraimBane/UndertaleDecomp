on = 0
image_speed = 0.25
sprite_index = spr_onoffswitch_off
if (room == room_fire8)
    FL_CompletedShootPuzzle1 = 0
if (room == room_fire9)
    FL_CompletedShootPuzzle2 = 0
if (room == room_fire_core_warrior)
{
    FL_PreCastleUnknown2 = 1
    sprite_index = spr_onoffswitch_on
}

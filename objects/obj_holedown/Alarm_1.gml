if (global.phasing == 1)
{
    global.facing += 1
    if (global.facing > 3)
        global.facing = Direction.Down
    alarm[1] = 4
}

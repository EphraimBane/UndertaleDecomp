siner = 0
if (FL_QuickBattle == 1)
{
    firingspeed = 3
    alarm[0] = 1
    dmg = 9
    siner = 0
    global.turntimer = 45
}
if (FL_QuickBattle == 2 || FL_QuickBattle == 3)
{
    global.turntimer = 55
    for (i = 0; i < 3; i += 1)
    {
        obj_fakeheart.x = (global.idealborder[0] + 50)
        b = choose(1, 2)
        bb = instance_create((550 + (i * 100)), global.idealborder[2], obj_bluelaser_b)
        bb.blue = b
        bb.hspeed = -12
    }
}

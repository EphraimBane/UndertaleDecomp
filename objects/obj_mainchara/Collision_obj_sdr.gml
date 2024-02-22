if (global.phasing == 0)
{
    if (global.interact == 0)
    {
        if (global.facing == Direction.Right)
        {
            if (collision_point((bbox_right + 2), (bbox_top - 2), obj_solidparent, 0, 1) == -4)
            {
                x = (xprevious + 3)
                y = (yprevious - 3)
            }
            else
                x = xprevious
        }
        if (global.facing == Direction.Down)
        {
            if (collision_point((bbox_left - 3), (bbox_bottom + 3), obj_solidparent, 0, 1) == -4)
            {
                x = (xprevious - 3)
                y = (yprevious + 3)
            }
            else
                y = yprevious
        }
        if (global.facing == Direction.Up)
        {
            x = xprevious
            y = (yprevious - 3)
        }
        if (global.facing == Direction.Left)
        {
            y = yprevious
            x = (xprevious - 3)
        }
        if (obj_time.down && obj_time.right)
        {
            x = xprevious
            y = yprevious
        }
        if ((x % 3) != 0)
            x -= 1
        if ((y % 3) != 0)
            y -= 1
        moving = false
    }
}
if (global.interact == 5 || global.interact == 1 || (global.interact == 3 && global.phasing == 0))
{
    x = xprevious
    y = yprevious
}
